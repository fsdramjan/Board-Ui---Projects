import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bottomBarHome.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool value = false;

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
                  height: 30,
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
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
                  text: '''Login to your account using your email and
start working today!''',
                  fontSize: AppTheme.textSize14,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 80,
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
                      fontSize: AppTheme.textSize13,
                      fontFamily: AppTheme.medium,
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
                        fontSize: AppTheme.textSize14,
                        color: AppTheme.textColor2,
                        fontFamily: AppTheme.medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/lock.png',
                      width: AppTheme.textSize14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    KText(
                      text: 'Password',
                      fontSize: AppTheme.textSize13,
                      fontFamily: AppTheme.medium,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: AppTheme.height55,
                  width: AppTheme.widthMax,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: '**********',
                      hintStyle: TextStyle(
                        letterSpacing: 6,
                        fontSize: AppTheme.textSize14,
                        color: AppTheme.textColor2,
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/icon/eye.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    checkBox(),
                    SizedBox(width: 15),
                    KText(
                      text: 'Remember me',
                      fontSize: AppTheme.textSize14,
                      fontFamily: AppTheme.medium,
                      color: AppTheme.textColor2,
                    ),
                    Spacer(),
                    KText(
                      text: 'Forget Password',
                      color: AppTheme.textColor,
                      fontSize: AppTheme.textSize14,
                      fontFamily: AppTheme.semi,
                    ),
                  ],
                ),
                SizedBox(
                  height: 230,
                ),
                GestureDetector(
                  onTap: () => Get.to(BottomBarHome()),
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
                        Container(
                          alignment: Alignment.center,
                          child: KText(
                            text: 'Login',
                            color: AppTheme.white,
                            fontSize: AppTheme.textSize15,
                            fontFamily: AppTheme.semi,
                          ),
                        ),
                        Positioned(
                          right: 20,
                          child: Image.asset(
                            'assets/icon/login.png',
                            height: 17,
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

  Widget checkBox() => Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: HexColor('#F9F9F9'),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Checkbox(
          fillColor: MaterialStateProperty.all(Colors.transparent),
          checkColor: AppTheme.iconColor,
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
      );
}
