import 'package:board_ui/src/configs/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/img/profile-cover.png'),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.textColor2.withOpacity(
                          .60,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: AppTheme.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppTheme.iconColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Edit   ',
                            style: GoogleFonts.cairo(
                              fontSize: 13,
                              color: AppTheme.white,
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: AppTheme.white,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   child: Expanded(
                  //     child: Container(
                  //       height: Get.height,
                  //       width: Get.width,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(30),
                  //           topRight: Radius.circular(30),
                  //         ),
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
