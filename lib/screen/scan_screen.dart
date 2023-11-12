import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:flutter/services.dart';

class Scaneo extends StatefulWidget {
  @override
  _ScaneoState createState() => _ScaneoState();
}

class _ScaneoState extends State<Scaneo> {
  MobileScannerController cameraController = MobileScannerController();
  String detectedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.cameraFacingState,
              builder: (context, state, child) {
                switch (state as CameraFacing) {
                  case CameraFacing.front:
                    return const Icon(Icons.camera_front);
                  case CameraFacing.back:
                    return const Icon(Icons.camera_rear);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.switchCamera(),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: MobileScanner(
              fit: BoxFit.contain,
              controller: cameraController,
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                final Uint8List? image = capture.image;
                if (barcodes.isNotEmpty) {
                  final Barcode qrCode = barcodes.first;
                  if (qrCode.rawValue != null) {
                    _handleQRCode(qrCode.rawValue!);
                  }
                }

                if (image != null) {
                  showDialog(
                    context: context,
                    builder: (context) => Image(image: MemoryImage(image)),
                  );
                  Timer(const Duration(seconds: 5), () {
                    Navigator.pop(context);
                  });
                }
              },
            ),
          ),
          if (detectedText.isNotEmpty)
            ElevatedButton(
              onPressed: () {
                _showTextDialog(context, detectedText);
              },
              child: Text('Mostrar Texto'),
            ),
        ],
      ),
    );
  }

  void _handleQRCode(String content) {
    debugPrint('Contenido del QR Code: $content');
    try {
      final Uri uri = Uri.parse(content);
      url_launcher.launch(uri.toString());
    } catch (_) {
      debugPrint("Error al intentar abrir la URL: $content");
     
    }

    setState(() {
      detectedText = content;
    });
  }

  Future<void> _showTextDialog(BuildContext context, String text) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contenido del QR (Texto)'),
          content: Column(
            children: [
              Text(text),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: text));
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Texto copiado al portapapeles'),
                    ),
                  );
                },
                child: Text('Copiar'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}
