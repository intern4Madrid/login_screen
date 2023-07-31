import 'package:flutter/material.dart';

class QRScreen extends StatefulWidget {
  const QRScreen({Key? key}) : super(key: key);
  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              decoration: const BoxDecoration(color: Colors.indigoAccent),
              padding: const EdgeInsets.all(16),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Center(
                            child: Text(
                              'QR Code',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 150,
                      child: Image.asset('images/qr.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Scan Me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
