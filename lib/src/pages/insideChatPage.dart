import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class InsideChatPage extends StatelessWidget {
  const InsideChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: Get.width,
                decoration: BoxDecoration(
                  color: HexColor('#666666'),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 110,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.only(left: 45, right: 30),
                            child: Row(
                              children: [
                                Container(
                                  child: GestureDetector(
                                    onTap: () => Get.back(),
                                    child: Icon(
                                      EvaIcons.arrowIosBack,
                                      size: 24,
                                      color: AppTheme.textColor,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25),
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: Image.asset(
                                        'assets/img/chat-img-1.jpg',
                                        width: 53,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    KText(
                                      text: 'Nada Elsayed',
                                      fontFamily: 'Poppins Semi Bold',
                                      fontSize: 15,
                                    ),
                                    KText(
                                      text: 'Online',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.more_vert,
                                  size: 26,
                                  color: AppTheme.iconColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            KText(
                              text: 'Design School Cover Banner',
                              fontWeight: FontWeight.w600,
                              color: AppTheme.iconColor,
                              fontSize: 12,
                            ),
                            SizedBox(width: 100),
                            Text(
                              'Ongoing',
                              style: GoogleFonts.cairo(
                                color: AppTheme.textColor2,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
