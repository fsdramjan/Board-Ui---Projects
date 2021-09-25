import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/placeingBidPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: AppTheme.paddingHV40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Image.asset(
                    'assets/icon/back.png',
                    scale: 2.70,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    KText(
                      text: 'Open',
                      color: AppTheme.iconColor,
                      fontFamily: AppTheme.medium,
                      fontSize: AppTheme.textSize12,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 2,
                    ),
                    SizedBox(width: 8),
                    KText(
                      text: 'Ends within 4 days',
                      color: AppTheme.textColor2,
                      fontFamily: AppTheme.medium,
                      fontSize: AppTheme.textSize12,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                KText(
                  text: 'Design a school brochure',
                  fontSize: AppTheme.textSize19,
                  fontFamily: AppTheme.semi,
                ),
                SizedBox(height: 15),
                KText(
                  text: '''Lorem ipsum dolor sit amet, consectetur adipiscen
elit, sed do eiusmodLorem ipsum dolor sit ametreti
consectetur adipiscen elit, sed do eiusmod''',
                  fontSize: 12.50,
                  fontFamily: AppTheme.medium,
                  color: AppTheme.grey,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon/pdf.png',
                          width: 25,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: 'Project File.pdf',
                              fontFamily: AppTheme.medium,
                              fontSize: AppTheme.textSize13,
                            ),
                            KText(
                              text: '14 April 2020',
                              color: AppTheme.grey,
                              fontFamily: AppTheme.medium,
                              fontSize: AppTheme.textSize10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/img/bid-img-2.jpg',
                            width: 30,
                          ),
                        ),
                        SizedBox(width: 6),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: ' Muhammed',
                              fontFamily: AppTheme.medium,
                              fontSize: AppTheme.textSize13,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                SizedBox(width: 2),
                                KText(
                                  text: '4.5',
                                  fontFamily: AppTheme.medium,
                                  fontSize: AppTheme.textSize11,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'Project Budget',
                  fontSize: AppTheme.textSize16,
                  fontFamily: AppTheme.medium,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '10,000 ',
                        style: TextStyle(
                          fontSize: AppTheme.textSize17,
                          color: AppTheme.textColor,
                          fontFamily: AppTheme.semi,
                        ),
                        children: [
                          TextSpan(
                            text: 'SAR  ',
                            style: TextStyle(
                              fontSize: AppTheme.textSize14,
                              color: AppTheme.textColor2,
                              fontFamily: AppTheme.semi,
                            ),
                          ),
                        ],
                      ),
                    ),
                    KText(
                      text: '~',
                      color: AppTheme.iconColor,
                      fontSize: AppTheme.textSize17,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '  15,000 ',
                        style: TextStyle(
                          fontSize: AppTheme.textSize17,
                          color: AppTheme.textColor,
                          fontFamily: AppTheme.semi,
                        ),
                        children: [
                          TextSpan(
                            text: 'SAR',
                            style: TextStyle(
                              fontSize: AppTheme.textSize14,
                              color: AppTheme.textColor2,
                              fontFamily: AppTheme.semi,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'Avg. Bid',
                  fontSize: AppTheme.textSize16,
                  fontFamily: AppTheme.medium,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '11,240 ',
                        style: TextStyle(
                          fontSize: AppTheme.textSize17,
                          color: AppTheme.textColor,
                          fontFamily: AppTheme.semi,
                        ),
                        children: [
                          TextSpan(
                            text: 'SAR',
                            style: TextStyle(
                              fontSize: AppTheme.textSize14,
                              color: AppTheme.textColor2,
                              fontFamily: AppTheme.semi,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/img/bid-img-1.jpg',
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
                                'assets/img/bid-img-2.jpg',
                                width: 25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
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
                    SizedBox(width: 30),
                    KText(
                      text: '60 Bids',
                      fontFamily: AppTheme.medium,
                      fontSize: AppTheme.textSize13,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                Row(
                  children: [
                    KText(
                      text: 'Bids (39)',
                      fontFamily: AppTheme.medium,
                      fontSize: AppTheme.textSize16,
                    ),
                    Spacer(),
                    KText(
                      text: 'View All  ',
                      color: AppTheme.iconColor,
                      fontFamily: AppTheme.medium,
                      fontSize: AppTheme.textSize14,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppTheme.iconColor,
                      size: 12,
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 40),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/img/bid-img-1.jpg',
                                    width: 35,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: 8),
                                            KText(
                                              text: 'Khalid Saied Morsy',
                                              fontFamily: AppTheme.medium,
                                              fontSize: AppTheme.textSize13,
                                            ),
                                            SizedBox(width: 10),
                                            CircleAvatar(
                                              radius: 9,
                                              backgroundColor:
                                                  AppTheme.primaryColor,
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/icon/reload.png',
                                                  width: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: 5),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 14,
                                            ),
                                            SizedBox(width: 2),
                                            KText(
                                              text: '4.5',
                                              fontFamily: AppTheme.medium,
                                              fontSize: AppTheme.textSize11,
                                            ),
                                            SizedBox(width: 5),
                                            KText(
                                              text: '(',
                                              color: AppTheme.textColor2,
                                              fontFamily: AppTheme.medium,
                                              fontSize: 8,
                                            ),
                                            KText(
                                              text: ' 1200 Review ',
                                              color: AppTheme.textColor2,
                                              fontFamily: AppTheme.medium,
                                              fontSize: AppTheme.textSize11,
                                            ),
                                            KText(
                                              text: ')',
                                              color: AppTheme.textColor2,
                                              fontFamily: AppTheme.medium,
                                              fontSize: 8,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width / 7),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: '11,240 ',
                                            style: TextStyle(
                                              fontSize: AppTheme.textSize17,
                                              color: AppTheme.textColor,
                                              fontFamily: AppTheme.semi,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'SAR',
                                                style: TextStyle(
                                                  fontSize: AppTheme.textSize14,
                                                  color: AppTheme.textColor2,
                                                  fontFamily:
                                                      'Poppins Semi Bold',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '4 Days',
                                          style: GoogleFonts.cairo(
                                            fontSize: AppTheme.textSize11,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
etretqr consectetur adipiscen''',
                              style: TextStyle(
                                wordSpacing: 1,
                                fontSize: AppTheme.textSize12,
                                fontFamily: AppTheme.medium,
                                color: AppTheme.grey,
                              ),
                            ),
                            SizedBox(height: 30),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'Required Skills',
                  fontSize: AppTheme.textSize16,
                  fontFamily: AppTheme.semi,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    KText(
                      text: 'Photoshop',
                      fontSize: AppTheme.textSize14,
                      color: AppTheme.grey,
                      fontFamily: AppTheme.medium,
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'Design',
                      fontSize: AppTheme.textSize14,
                      color: AppTheme.grey,
                      fontFamily: AppTheme.medium,
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'Social Media',
                      fontSize: AppTheme.textSize14,
                      color: AppTheme.grey,
                      fontFamily: AppTheme.medium,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'Project Code',
                  fontSize: AppTheme.textSize16,
                  fontFamily: AppTheme.semi,
                ),
                SizedBox(height: 10),
                KText(
                  text: '30446337',
                  fontSize: AppTheme.textSize14,
                  color: AppTheme.grey,
                  fontFamily: AppTheme.medium,
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => Get.to(PlaceingBidPage()),
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: KText(
                        text: 'Make a Bid',
                        color: Colors.white,
                        fontSize: AppTheme.textSize15,
                        fontFamily: AppTheme.semi,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
