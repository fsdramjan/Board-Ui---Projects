import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bottomBarHome.dart';

import 'package:board_ui/src/pages/loginWithPage.dart';

import 'package:board_ui/src/pages/registerWithPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.globeAmericas,
                    color: AppTheme.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => Get.to(BottomBarHome()),
                child: Image.asset(
                  'assets/img/logo.png',
                  width: 330,
                ),
              ),
              SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  KText(
                    text: '''Don't have account?''',
                    fontSize: AppTheme.textSize14,
                    fontFamily: AppTheme.medium,
                    color: AppTheme.textColor2,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(
                      RegisterWithPage(),
                    ),
                    child: KText(
                      text: ' Sign up',
                      color: HexColor('#323643'),
                      fontSize: AppTheme.textSize14,
                      fontFamily: AppTheme.semi,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () => Get.to(LoginWithPage()),
                child: Padding(
                  padding: AppTheme.paddingH30,
                  child: Container(
                    height: AppTheme.height50,
                    width: AppTheme.widthMax,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: AppTheme.circular10,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        KText(
                          text: 'Login',
                          color: Colors.white,
                          fontSize: AppTheme.textSize15,
                          fontWeight: FontWeight.w600,
                        ),
                        Positioned(
                          right: 20,
                          child: Image.asset(
                            'assets/icon/login.png',
                            height: 18,
                          ),
                        ),
                      ],
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
    );
  }
}
