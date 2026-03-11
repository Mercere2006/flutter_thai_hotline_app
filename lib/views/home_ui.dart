import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_d_home_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  List<Widget> viewInBody = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi(),
  ];

  int indexShow = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('สายด่วน THAILAND', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF0D1424),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUi()),
            ),
            icon: Icon(FontAwesomeIcons.circleInfo, color: Colors.white),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xFF0D1424),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(0, FontAwesomeIcons.compass, 'การเดินทาง'),
            buildNavItem(1, FontAwesomeIcons.truckMedical, 'อุบัติเหตุ'),
            buildNavItem(2, FontAwesomeIcons.moneyBillWave, 'ธนาคาร'),
            buildNavItem(3, FontAwesomeIcons.seedling, 'สาธารณูปโภค'),
          ],
        ),
      ),
      body: viewInBody[indexShow],
    );
  }

  Widget buildNavItem(int index, IconData icon, String label) {
    bool isActive = indexShow == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          indexShow = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isActive ? Colors.white : Colors.white38,
              size: isActive ? 32 : 24, // ไอคอนขยายขึ้น
            ),
            SizedBox(height: 4),
            AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 200),
              style: TextStyle(
                color: isActive ? Colors.white : Colors.white38,
                fontSize: isActive ? 16 : 12, // ตัวหนังสือขยายขึ้นจาก 12 เป็น 16!
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}