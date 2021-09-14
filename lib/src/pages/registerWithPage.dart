import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/loginPage.dart';
import 'package:board_ui/src/pages/registerPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterWithPage extends StatelessWidget {
  const RegisterWithPage({Key? key}) : super(key: key);

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
                  text: 'Register',
                  color: HexColor('#323643'),
                  fontSize: 20,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: '''Create a new account using your email or
social media accounts''',
                  fontSize: 14,
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
                    text: 'Sign up using Facebook',
                    fontSize: 14,
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
                    text: 'Sign up using Google',
                    fontSize: 14,
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
                    text: 'Sign up using Apple',
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                ListTile(
                  onTap: () => Get.to(RegisterPage()),
                  leading: Image.asset(
                    'assets/icon/gmail.png',
                    width: 33,
                    // color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'Sign up using Email',
                    fontSize: 14,
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
                      text: '''Already have an account?''',
                      fontSize: 14,
                      color: AppTheme.textColor2,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(LoginPage()),
                      child: KText(
                        text: ' Login',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
