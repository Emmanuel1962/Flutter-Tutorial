import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/carousel_class.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // this for any action you want to happen when you enter a scrren
    super.initState();
    Timer(const Duration(seconds: 5), () {
      var route = MaterialPageRoute(
        builder: (context) => const CarouselClass(),
      );
      Navigator.push(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashScreen'),
      ),
      body: Container(
        color: Colors.brown,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
                'assets/images/Screenshot (34).png'), // this gotten from asssets(image from my system)
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
