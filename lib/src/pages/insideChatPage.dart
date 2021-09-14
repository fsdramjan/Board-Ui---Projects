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
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: HexColor('#666666'),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          KText(
                            text: 'Design School Cover Banner',
                            fontWeight: FontWeight.w600,
                            color: AppTheme.iconColor,
                            fontSize: 12,
                          ),
                          Text(
                            'Ongoing',
                            style: GoogleFonts.cairo(
                              color: AppTheme.textColor2,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25),
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
                  SizedBox(height: 200),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
