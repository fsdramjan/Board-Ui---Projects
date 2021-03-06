import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/PaymilestonePage.dart';
import 'package:board_ui/src/pages/bottomBarProfile.dart';
import 'package:board_ui/src/pages/loginWithPage.dart';
import 'package:board_ui/src/pages/notificationsPage.dart';
import 'package:board_ui/src/pages/privacyAndPolicyPage.dart';

import 'package:board_ui/src/pages/settingsPage.dart';
import 'package:board_ui/src/pages/terms&conditionsPage.dart';
import 'package:board_ui/src/pages/topupBalanceMilestonePage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/listTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final listtilePadding = EdgeInsets.only(left: 20, right: 35);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ListTile(
                onTap: () => Get.to(BottomBarProfile()),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/img/chat-img-1.jpg',
                    width: 50,
                  ),
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: KText(
                    text: 'Asma Ahmed Zarea',
                    fontFamily: 'Poppins Medium',
                    fontSize: 16,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: KText(
                    text: 'View & Edit Profile',
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppTheme.iconColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 175,
                  width: Get.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppTheme.primaryColor,
                        HexColor('#359FB8').withOpacity(.90),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        KText(
                          text: 'Available Balance',
                          // fontFamily: 'Poppins Medium',
                          color: AppTheme.white,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Container(),
                            ),
                            KText(
                              text: '11,240',
                              fontFamily: 'Poppins Medium',
                              fontSize: 35,
                              color: AppTheme.white,
                            ),
                            KText(
                              text: 'SAR',
                              fontSize: 15,
                              fontFamily: 'Poppins Medium',
                              color: Colors.white54,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Get.to(TopUpBalanceMileStonePage()),
                              child: Container(
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 40),
                                    Text(
                                      'Top Up',
                                      style: GoogleFonts.cairo(
                                        color: AppTheme.primaryColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    Image.asset(
                                      'assets/icon/topup.png',
                                      width: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(PayMileStonePage()),
                              child: Container(
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white54),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 25),
                                    Text(
                                      'Withdraw',
                                      style: GoogleFonts.cairo(
                                        color: AppTheme.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(width: 25),
                                    Image.asset(
                                      'assets/icon/withdraw.png',
                                      width: 22,
                                      color: AppTheme.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: listtilePadding,
                    child: listTile(() => Get.to(NotificationPage()),
                        'Notifications', 'Check your latest notifications'),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: listtilePadding,
                    child: listTile(
                      () => Get.to(SettingsPage()),
                      'Settings',
                      'Set your preferred settings',
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: listtilePadding,
                    child: listTile(
                      () => Get.to(PrivacyAndPolicy()),
                      'Privacy Policy',
                      'Check your latest privacy & policy',
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: listtilePadding,
                    child: listTile(
                      () => Get.to(TermsAndConditionPage()),
                      'Terms & Conditions',
                      'Check your latest Terms & Conditions',
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: listtilePadding,
                    child: listTile(
                      () => Get.defaultDialog(
                        radius: 30,
                        title: 'Contact Us',
                        titleStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins Semi Bold',
                        ),
                        middleText: 'Send a message to our team',
                        middleTextStyle: TextStyle(
                          fontSize: 13,
                          color: AppTheme.textColor2,
                          fontFamily: 'Poppins Medium',
                        ),
                        actions: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Image.asset(
                                    'assets/icon/yahoo.png',
                                    width: 30,
                                  ),
                                  SizedBox(height: 10),
                                  KText(
                                    text: 'Yahoo',
                                    fontSize: 12,
                                    fontFamily: 'Poppins Medium',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Image.asset(
                                    'assets/icon/gmail1.png',
                                    width: 30,
                                  ),
                                  SizedBox(height: 10),
                                  KText(
                                    text: 'Gmail',
                                    fontSize: 12,
                                    fontFamily: 'Poppins Medium',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Image.asset(
                                    'assets/icon/outlook.png',
                                    width: 30,
                                  ),
                                  SizedBox(height: 10),
                                  KText(
                                    text: 'Outlook',
                                    fontSize: 12,
                                    fontFamily: 'Poppins Medium',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      'Contact Us',
                      'Send us a message if you need help',
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: TextButton(
                  onPressed: () => Get.to(LoginWithPage()),
                  child: KText(
                    text: 'Logout',
                    fontFamily: 'Poppins Medium',
                    fontSize: 14,
                    color: HexColor('#E85454'),
                  ),
                ),
              ),
              SizedBox(height: 140),
            ],
          ),
        ),
      ),
    );
  }
}
