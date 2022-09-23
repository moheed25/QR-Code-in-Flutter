import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qrcode/screens/homepage.dart';

class Intr extends StatefulWidget {
  const Intr({super.key});

  @override
  State<Intr> createState() => _IntrState();
}

class _IntrState extends State<Intr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_6SsPj1.json',
                  width: 330,
                  height: 300,
                  // fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      // border: Border.all(
                      //   color: Colors.grey,
                      //   width: 6,
                      // ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Start",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
