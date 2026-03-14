import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 52, 79, 141),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "ผู้จัดทำ",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/icons/SAU logo.png',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width,
                ),
                child: Image.asset(
                  'assets/icons/me.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "6752410013\nนางสาวศรัณยพร เหลืองสอาด\nS6752410013@sau.ac.th\nสาขาเทคโนโลยีดิจิทัลและนวัตกรรม\nคณะศิลปศาสตร์และวิทยาศาสตร์",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                height: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}