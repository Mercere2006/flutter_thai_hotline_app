import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {
  List<String> imageShow = [
    'assets/images/tra1.png',
    'assets/images/tra2.png',
    'assets/images/tra3.png',
    'assets/images/tra4.jpg',
    'assets/images/tra5.png',
    'assets/images/tra6.png',
    'assets/images/tra7.png',
    'assets/images/tra8.jpg',
    'assets/images/tra9.png',
  ];

  List<String> messageShow = [
    'ข้อมูลจราจร',
    'ตำรวจท่องเที่ยว',
    'ตำรวจทางหลวง',
    'ข้อมูลจราจร',
    'ขสมก.',
    'บขส.',
    'เส้นทางบนทางด่วน',
    'กรมทางหลวง',
    'การรถไฟแห่งประเทศไทย',
  ];

  List<String> phoneShow = [
    '1146',
    '1155',
    '1193',
    '1197',
    '1348',
    '1490',
    '1543',
    '1586',
    '1690',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Expanded(
          child: ListView(
            children: [
              SizedBox(height: 40),
              Text(
                "สายด่วน\nการเดินทาง",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Color(0xFF0D1424),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/travel.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 150,
                    color: Colors.grey[300],
                    child: Icon(Icons.broken_image),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: imageShow.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  imageShow[index],
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Icon(Icons.image_not_supported,
                                          color: Colors.red),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  messageShow[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  phoneShow[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                FontAwesomeIcons.phone,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}