import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginWithPage extends StatelessWidget {
  const LoginWithPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                KText(
                  text: 'Login',
                  color: HexColor('#323643'),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: '''Login to your account using your email or
social media accounts''',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: HexColor('#BCBCBC'),
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 20,
                    color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'Sign in using Facebook',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
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
                    color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'Sign in using Google',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
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
                    color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'Sign in using Apple',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    'assets/icon/gmail.png',
                    width: 33,
                    // color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'Sign in using Email',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
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
                      fontSize: 14,
                      color: AppTheme.textColor2,
                    ),
                    KText(
                      text: ' Sign up',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
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
