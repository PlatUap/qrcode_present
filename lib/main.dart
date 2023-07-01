import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: QrImageView(
            //QRImage sudah deprecated, diganti dengan QRImageView
            data: "https://picsum.photos/200",
            version: QrVersions.auto,
            backgroundColor: Colors.grey,
            //foregroundColor: Colors.black, sudah deprecated
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(20),
            size: 300,
            gapless: true,
            embeddedImage: NetworkImage("https://picsum.photos/200"),
          ),
        ),
      ),
    );
  }
}
