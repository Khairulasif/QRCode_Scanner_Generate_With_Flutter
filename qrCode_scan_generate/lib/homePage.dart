import 'package:flutter/material.dart';
import 'package:qrcode_scan_generate/generate_qr_code.dart';
import 'package:qrcode_scan_generate/scan_qr_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner and Generator"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScanQRCode(),
                    ),
                  );
                });
              },
              child: Text("Scan QR Code"),
            ),
            SizedBox(
              height: 48,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GenerateQRCode(),
                    ),
                  );
                });
              },
              child: Text("Generate QR Code"),
            ),
          ],
        ),
      ),
    );
  }
}
