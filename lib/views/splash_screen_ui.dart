// ignore_for_file: use_build_context_synchronously, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeUi()),
        );
      },
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1424),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/welcome1.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "THAI HOTLINE APP",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "สายด่วน",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}