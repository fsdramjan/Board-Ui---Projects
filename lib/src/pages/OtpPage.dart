import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/registerFormPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/otpFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 45),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 18,
              ),
            ),
          ),
        ),
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
                KText(
                  text: 'OTP Verification',
                  color: HexColor('#323643'),
                  fontSize: 20,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: '''Enter the 4-digit code sent to your registered
email to get verified''',
                  fontSize: 14,
                  color: HexColor('#BCBCBC'),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin2FocusNode);
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          focusNode: pin2FocusNode,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin3FocusNode);
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          focusNode: pin3FocusNode,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin4FocusNode);
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          focusNode: pin4FocusNode,
                          onChanged: (value) {
                            pin4FocusNode.unfocus();
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 330,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: '''Don't receive code?''',
                      fontSize: 15,
                      color: AppTheme.textColor2,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: KText(
                        text: ' Resend',
                        fontSize: 15,
                        fontFamily: 'Poppins Semi Bold',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => Get.to(RegisterFormPage()),
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
                            text: 'Confirm OTP',
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins Semi Bold',
                          ),
                        ),
                        Positioned(
                          right: 20,
                          child: Icon(
                            Icons.done,
                            color: AppTheme.white,
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
