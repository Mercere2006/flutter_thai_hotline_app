import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  List<String> imageShow = [
    'assets/images/te1.jpg',
    'assets/images/te2.jpg',
    'assets/images/te3.jpg',
    'assets/images/te4.jpg',
    'assets/images/te5.jpg',
    'assets/images/te6.jpg',
    'assets/images/te7.png',
    'assets/images/te8.png',
    'assets/images/te9.jpg',
  ];

  List<String> messageShow = [
    'ธนาคารกรุงเทพ',
    'ธนาคารออมสิน',
    'ธนาคารกสิกรไทย',
    'ธนาคารกรุงไทย',
    'ธนาคารกรุงศรี',
    'ธนาคารทีเอ็มบีธนชาต',
    'ธนาคารciti',
    'ธนาคารLH',
    'ธนาคารธอส',
    'ธนาคารไทยพาณิชย์',
    'ธนาคารKiatnakinphatra',
    'ธนาคารไทยเครดิต',
    'ธนาคารUOB',
    'ธนาคารTisco',
    'ธนาคารอิสลาม',
    'ธนาคารอซีไอเอ็มบี ไทย'
  ];

  List<String> phoneShow = [
    '1333',
    '1115',
    '02 888 8888',
    '02 111 1111',
    '1572',
    '1428',
    '1588',
    '1327',
    '02 777 7777',
    '02 165 5555',
    '02 697 5454',
    '02 285 1555',
    '02 285 1555',
    '02 633 6000',
    '02 204 2766',
    '02 626 7777',
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
              "สายด่วน\nธนาคาร",
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
                'assets/images/bank.jpg',
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
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
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
                              color: Colors.green,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.withOpacity(0.4),
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