import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:qrcode/screens/QRcreate.dart';
import 'package:qrcode/screens/Qrscaning.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Text("HOME PAGE",
            style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).pushNamed('QrCreate/');
            //     },
            //     style: ElevatedButton.styleFrom(primary: Colors.purple),
            //     child: Text(
            //       "Generate Qr Code",
            //       style: GoogleFonts.raleway(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     )),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets10.lottiefiles.com/packages/lf20_bkk8dgpn.json',
                  width: 330,
                  height: 300,
                  // fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QrCreate()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(
                          //  color: Colors.grey,
                          //  width: 6,
                          ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Generate Qr Code",
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            ),

//
            SizedBox(
              height: 10,
            ),

//

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QrScan()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(
                          //  color: Colors.grey,
                          //  width: 6,
                          ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Scan Qr Code",
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            ),
//

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).pushNamed('QrCreate/');
            //     },
            //     style: ElevatedButton.styleFrom(primary: Colors.red),
            //     child: Text(
            //       "Scan Qr Code",
            //       style: GoogleFonts.raleway(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     )),
          ],
        ),
      ),
    );
  }
}
