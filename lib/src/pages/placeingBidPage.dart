import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bidSuccessPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaceingBidPage extends StatelessWidget {
  const PlaceingBidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Icon(
                              EvaIcons.arrowIosBack,
                              size: 24,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          KText(
                            text: 'Make a Bid',
                            fontFamily: 'Poppins Semi Bold',
                            fontSize: 17,
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'Open',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.primaryColor,
                          ),
                          KText(
                            text: 'Ends within 4 days',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textColor2,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      KText(
                        text: '''Design a WordPress website for fas ...''',
                        fontSize: 15.50,
                        fontFamily: 'poppins Semi Bold',
                        color: AppTheme.textColor,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    'assets/img/bid-img-2.jpg',
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/img/bid-img-1.jpg',
                                      width: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          KText(
                            text: '60 Bids',
                            fontSize: 12,
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: '10,000 ',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppTheme.textColor,
                                fontFamily: 'Poppins Semi Bold',
                              ),
                              children: [
                                TextSpan(
                                  text: 'SAR ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppTheme.textColor2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          KText(
                            text: '~',
                            color: AppTheme.iconColor,
                            fontSize: 16,
                          ),
                          RichText(
                            text: TextSpan(
                              text: ' 10,000 ',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppTheme.textColor,
                                fontFamily: 'Poppins Semi Bold',
                              ),
                              children: [
                                TextSpan(
                                  text: 'SAR',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppTheme.textColor2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                KText(
                  text: 'Bid Value',
                  fontFamily: 'Poppins Semi Bold',
                  fontSize: 13,
                  color: AppTheme.textColor,
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      suffixText: 'SAR',
                      hintText: '..',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins Semi Bold',
                        color: AppTheme.textColor2,
                      ),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KText(
                      text: 'Bid after adding our fees',
                      fontSize: 13,
                      fontFamily: 'Poppins Semi Bold',
                      color: AppTheme.textColor2,
                    ),
                    KText(
                      text: '11,300',
                      fontSize: 13,
                      fontFamily: 'Poppins Semi Bold',
                      color: AppTheme.textColor,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                KText(
                  text: 'Required Time',
                  fontFamily: 'Poppins Semi Bold',
                  fontSize: 13,
                  color: AppTheme.textColor,
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins Semi Bold',
                    ),
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixText: 'Days',
                      hintText: '..',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins Semi Bold',
                        fontSize: 13,
                        color: AppTheme.textColor2,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                KText(
                  text: 'Bid Description',
                  fontFamily: 'Poppins Semi Bold',
                  fontSize: 13,
                  color: AppTheme.textColor,
                ),
                SizedBox(height: 20),
                Container(
                  height: 120,
                  width: Get.width,
                  child: TextField(
                    maxLines: 200,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      hintText:
                          '''Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
Lorem ipsum dolor sit amet, consectetur adipisce
etretqr consectetur adipiscen''',
                      hintStyle: TextStyle(
                        color: AppTheme.textColor2,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () => Get.to(BidSuccessPage()),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: KText(
                        text: 'Make a Bid',
                        color: AppTheme.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
