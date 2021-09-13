import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/searchFields.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final gradient1 = [
    HexColor('#2DCEF8').withOpacity(.40),
    HexColor('#FF4665').withOpacity(.40),
    HexColor('#FF5673').withOpacity(.40),
  ];
  final gradient2 = [
    HexColor('#3B40FE').withOpacity(.70),
    HexColor('#832BF6').withOpacity(.70),
    HexColor('#FF8C48').withOpacity(.70),
  ];

  final catagoryData = [
    {
      'image': 'assets/img/cata-1.jpg',
      'title': 'Design',
    },
    {
      'image': 'assets/img/cata-2.jpg',
      'title': 'Coding',
    },
    {
      'image': 'assets/img/cata-3.jpg',
      'title': 'Teach',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 40),
                Center(
                  child: KText(
                    text: 'Search',
                    fontFamily: 'Poppins Semi Bold',
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: searchPage,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    KText(
                      text: 'Categories',
                      fontFamily: 'Poppins Semi Bold',
                      fontSize: 15,
                      color: AppTheme.textColor,
                    ),
                    Spacer(),
                    KText(
                      text: 'View All  ',
                      fontFamily: 'Poppins Semi Bold',
                      fontSize: 13,
                      color: AppTheme.iconColor,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 13,
                      color: AppTheme.iconColor,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catagoryData.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      final image = catagoryData[index];
                      return Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Container(
                          width: 100,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  '${image['image']}',
                                  width: Get.width,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      gradient1[index],
                                      gradient2[index],
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: KText(
                                    text: '${image['title']}',
                                    fontSize: 15,
                                    color: AppTheme.white,
                                    fontFamily: 'Poppins Semi Bold',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    KText(
                      text: 'Projects',
                      fontFamily: 'Poppins Semi Bold',
                      fontSize: 15,
                      color: AppTheme.textColor,
                    ),
                    Spacer(),
                    KText(
                      text: 'View All  ',
                      fontFamily: 'Poppins Semi Bold',
                      fontSize: 13,
                      color: AppTheme.iconColor,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 13,
                      color: AppTheme.iconColor,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 140,
                      width: Get.width,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          listViewContent(),
                          SizedBox(height: 10),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listViewContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KText(
              text: 'Open',
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryColor,
            ),
            KText(
              text: 'Ends within 4 days',
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppTheme.textColor2,
            ),
          ],
        ),
        SizedBox(height: 10),
        KText(
          text: '''Design a WordPress website for fashion b..''',
          fontSize: 15.50,
          fontFamily: 'poppins Semi Bold',
          color: AppTheme.textColor,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/img/bid-img-2.jpg',
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/img/bid-img-1.jpg',
                        width: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            KText(
              text: '60 Bids',
              fontSize: 13,
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                text: '10,000 ',
                style: TextStyle(
                  fontSize: 13,
                  color: AppTheme.textColor,
                  fontFamily: 'Poppins Semi Bold',
                ),
                children: [
                  TextSpan(
                    text: 'SAR ',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppTheme.textColor2,
                      fontFamily: 'Poppins Semi Bold',
                    ),
                  ),
                ],
              ),
            ),
            KText(
              text: '~',
              color: AppTheme.iconColor,
              fontSize: 16,
            ),
            RichText(
              text: TextSpan(
                text: ' 10,000 ',
                style: TextStyle(
                  fontSize: 13,
                  color: AppTheme.textColor,
                  fontFamily: 'Poppins Semi Bold',
                ),
                children: [
                  TextSpan(
                    text: 'SAR',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppTheme.textColor2,
                      fontFamily: 'Poppins Semi Bold',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
