import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/beranda');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 102, 106, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.assignment_rounded,
              size: 100,
              color: Color.fromRGBO(252, 244, 224, 1),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "CAKAL",
              style: TextStyle(
                color: Color.fromRGBO(252, 244, 224, 1),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
