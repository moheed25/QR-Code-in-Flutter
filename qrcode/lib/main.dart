import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/pages/home_page.dart';
// import 'package:qr_code_scanner/pages/qr_create_page.dart';
// import 'package:qr_code_scanner/pages/qr_scan_page.dart';
// import 'package:qr_code_scanner/splash/splash_screens.dart';
import 'package:qrcode/screens/QRcreate.dart';
import 'package:qrcode/screens/Qrscaning.dart';
import 'package:qrcode/screens/homepage.dart';
import 'package:qrcode/screens/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': ((context) => const Intr()),
        'Intr/': ((context) => const Intr()),
        'HomePage/': ((context) => const HomePage()),
        'QrCreate/': ((context) => const QrCreate()),
        'QrScan/': ((context) => const QrScan()),
      },
      initialRoute: '/',
      // home: const Splash(),
    );
  }
}
