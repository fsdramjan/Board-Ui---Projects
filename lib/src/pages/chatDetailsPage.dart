import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({Key? key}) : super(key: key);

  @override
  _ChatDetailsPageState createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  bool value = false;
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () => Get.back(),
                            icon: Icon(
                              EvaIcons.arrowIosBack,
                              size: 24,
                            ),
                          ),
                          SizedBox(width: 60),
                          KText(
                            text: 'Chat Details',
                            fontFamily: 'Poppins Semi Bold',
                            fontSize: 17,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'Ongoing',
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
                    ),
                    SizedBox(height: 10),
                    KText(
                      text: '''Design a WordPress website for fashi ...''',
                      fontSize: 16,
                      fontFamily: 'poppins Semi Bold',
                      color: AppTheme.textColor,
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: RichText(
                        text: TextSpan(
                          text: ' 15,000 ',
                          style: TextStyle(
                            fontSize: 14,
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
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Chat Sides',
                      style: GoogleFonts.cairo(
                        fontSize: 14,
                        color: AppTheme.textColor2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey.shade100,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            backgroundColor: AppTheme.iconColor,
                            radius: 27,
                            child: CircleAvatar(
                              backgroundColor: AppTheme.white,
                              radius: 26,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/img/chat-side1.jpg',
                                  width: 45,
                                ),
                              ),
                            ),
                          ),
                          title: KText(
                            text: 'Muhammed Ibrahim',
                            fontFamily: 'Poppins Semi Bold',
                            fontSize: 14.50,
                          ),
                          subtitle: KText(
                            text: '@mada123',
                            color: AppTheme.textColor2,
                            fontSize: 13,
                          ),
                          trailing: KText(
                            text: 'Employer',
                            fontSize: 13,
                            color: AppTheme.iconColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            backgroundColor: AppTheme.iconColor,
                            radius: 27,
                            child: CircleAvatar(
                              backgroundColor: AppTheme.white,
                              radius: 26,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/img/chat-side2.jpg',
                                  width: 45,
                                ),
                              ),
                            ),
                          ),
                          title: KText(
                            text: 'Muhammed Ibrahim',
                            fontFamily: 'Poppins Semi Bold',
                            fontSize: 14.50,
                          ),
                          subtitle: KText(
                            text: '@mada123',
                            color: AppTheme.textColor2,
                            fontSize: 13,
                          ),
                          trailing: KText(
                            text: 'Freelancer',
                            fontSize: 13,
                            color: AppTheme.iconColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      leading: KText(
                        text: 'Hide Notifications',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                      trailing: Transform.scale(
                        scale: .90,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300.withOpacity(.80),
                                spreadRadius: .10,
                                blurRadius: 30,
                                offset: Offset(5, 10),
                              ),
                            ],
                          ),
                          child: CupertinoSwitch(
                            trackColor:
                                value == false ? Colors.white : Colors.white,
                            activeColor: AppTheme.iconColor,
                            value: value,
                            onChanged: (value) =>
                                setState(() => this.value = value),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: KText(
                        text: 'Archive Chat',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                      trailing: Transform.scale(
                        scale: .90,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300.withOpacity(.80),
                                spreadRadius: .10,
                                blurRadius: 30,
                                offset: Offset(5, 10),
                              ),
                            ],
                          ),
                          child: 
                          CupertinoSwitch(
                            trackColor: Colors.white,
                            activeColor: Colors.white,
                            value: value,
                            onChanged: (value) =>
                                setState(() => this.value = value),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: KText(
                              text: 'Block this Chat',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {},
                            child: KText(
                              text: 'Report This User',
                              fontSize: 14,
                              color: HexColor('#E85454'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
