import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

class _SubDHomeUiState extends State<SubDHomeUi> {
  List<String> imageShow = [
    'assets/images/loc1.png',
    'assets/images/loc2.png',
    'assets/images/loc3.png',
    'assets/images/loc4.png',
    'assets/images/loc5.jpg',
    'assets/images/loc6.jpg',
    'assets/images/loc7.png',
    'assets/images/loc8.jpg',
    'assets/images/loc9.jpg',
  ];

  List<String> messageShow = [
    'ไฟฟ้านครหลวง',
    'ไฟฟ้าส่วนภูมิภาค',
    'ไฟฟ้าฝ่ายผลิต',
    'การประปานครหลวง',
    'การประปาส่วนภูมิภาค',
    'True',
    'Dtac',
    'AIS',
    'TOT',
  ];

  List<String> phoneShow = [
    '1130',
    '1129',
    '1416',
    '1125',
    '1662',
    '1242',
    '1678',
    '1175',
    '1100',
  ];

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Text(
              "สายด่วน\nสาธารณูปโภค",
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
                'assets/images/local.jpg',
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
                return Container(
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
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                messageShow[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                phoneShow[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => _makePhoneCall(phoneShow[index]),
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orange.withOpacity(0.4),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Icon(
                              FontAwesomeIcons.phone,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}