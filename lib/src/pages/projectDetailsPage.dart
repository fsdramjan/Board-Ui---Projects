import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectDetailsPage extends StatefulWidget {
  ProjectDetailsPage({Key? key}) : super(key: key);

  @override
  _ProjectDetailsPageState createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends State<ProjectDetailsPage> {
  // ignore: unused_field
  late String _selected;

  List<Map> dropDownItem = [
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
  ];

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
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        EvaIcons.arrowIosBack,
                        size: 26,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                KText(
                  text: 'Project Details',
                  color: AppTheme.textColor,
                  fontSize: 20,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: '''Start adding more information about the project
like its name and description''',
                  fontSize: 14,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  clipBehavior: Clip.none,
                  height: 7,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 7,
                        width: Get.width / 2.20,
                        decoration: BoxDecoration(
                          color: AppTheme.iconColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                KText(
                  text: 'Project Title',
                  color: AppTheme.textColor,
                  fontSize: 13,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 55,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.textColor,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Design a school brochure',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: AppTheme.textColor,
                      ),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                KText(
                  text: 'Project Budget',
                  color: AppTheme.textColor,
                  fontSize: 13,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
