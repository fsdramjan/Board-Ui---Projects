import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/loginPage.dart';
import 'package:board_ui/src/pages/registerWithPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginWithPage extends StatelessWidget {
  const LoginWithPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: AppTheme.paddingH40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                KText(
                  text: 'Login',
                  color: AppTheme.textColor,
                  fontSize: AppTheme.textSize20,
                  fontFamily: AppTheme.semi,
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: '''Login to your account using your email or
social media accounts''',
                  fontSize: AppTheme.textSize14,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 20,
                    color: AppTheme.iconColor,
                  ),
                  title: KText(
                    text: 'Sign in using Facebook',
                    fontSize: AppTheme.textSize14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.google,
                    size: 20,
                    color: AppTheme.iconColor,
                  ),
                  title: KText(
                    text: 'Sign in using Google',
                    fontSize: AppTheme.textSize14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.apple,
                    size: 24,
                    color: AppTheme.iconColor,
                  ),
                  title: KText(
                    text: 'Sign in using Apple',
                    fontSize: AppTheme.textSize14,
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                ListTile(
                  onTap: () => Get.to(LoginPage()),
                  leading: Image.asset(
                    'assets/icon/gmail.png',
                    width: 33,
                  ),
                  title: KText(
                    text: 'Sign in using Email',
                    fontSize: AppTheme.textSize14,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: '''Don't have account?''',
                      fontSize: AppTheme.textSize14,
                      color: AppTheme.textColor2,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(RegisterWithPage()),
                      child: KText(
                        text: ' Sign up',
                        fontSize: AppTheme.textSize14,
                        fontFamily: AppTheme.semi,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
