import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  List<String> imageShow = [
    'assets/images/ac1.jpg',
    'assets/images/ac2.png',
    'assets/images/ac1.jpg',
    'assets/images/ac3.jpg',
    'assets/images/ac4.png',
    'assets/images/ac5.jpg',
    'assets/images/ac6.jpg',
    'assets/images/ac7.png',
    'assets/images/ac8.jpg',
  ];

  List<String> messageShow = [
    'เหตุด่วนเหตุร้าย',
    'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
    'สายด่วนรถหาย',
    'อุบัติเหตุทางน้ำ',
    'แจ้งคนหาย',
    'ศูนย์ปลอดภัยคมนาคม',
    'หน่วยแพทย์กู้ชีพ',
    'ศูนย์เอราวัณ',
    'เจ็บป่วยฉุกเฉิน',
  ];

  List<String> phoneShow = [
    '191',
    '199',
    '1192',
    '1196',
    '1300',
    '1356',
    '1554',
    '1646',
    '1669',
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
                "สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน",
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
                  'assets/images/accident.png',
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
                                    fontSize: 15,
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
                                color: Colors.red,
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