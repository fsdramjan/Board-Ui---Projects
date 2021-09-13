import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/OtpPage.dart';
import 'package:board_ui/src/pages/loginPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                  height: 40,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                KText(
                  text: 'Register',
                  color: AppTheme.textColor,
                  fontSize: 20,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: '''Create a new account using your email and
start working today!''',
                  fontSize: 14,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/email.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    KText(
                      text: 'Email Address',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: Get.width,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Mist4227s@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: AppTheme.textColor2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 280,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: 'Already have an account?',
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
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => Get.to(OtpPage()),
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: KText(
                            text: 'Register Account',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Positioned(
                          right: 20,
                          child: Image.asset(
                            'assets/icon/user.png',
                            height: 18,
                          ),
                        ),
                      ],
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
