import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CatagoryProjectsPage extends StatelessWidget {
  CatagoryProjectsPage({Key? key}) : super(key: key);

  final gradient1 = [
    HexColor('#FF8C48').withOpacity(.70),
    HexColor('#832BF6').withOpacity(.70),
    HexColor('#3B40FE').withOpacity(.70),
    //
    HexColor('#C7D664').withOpacity(.60),
    HexColor('#F7D107').withOpacity(.50),
    HexColor('#41D9C4').withOpacity(.70),
    //
    HexColor('#FF8C48').withOpacity(.70),
    HexColor('#832BF6').withOpacity(.70),
    HexColor('#3B40FE').withOpacity(.70),
    //
    HexColor('#C7D664').withOpacity(.60),
    HexColor('#F7D107').withOpacity(.50),
    HexColor('#41D9C4').withOpacity(.70),
    //
    HexColor('#FF8C48').withOpacity(.70),
    HexColor('#832BF6').withOpacity(.70),
    HexColor('#3B40FE').withOpacity(.70),
    //
    HexColor('#C7D664').withOpacity(.60),
    HexColor('#F7D107').withOpacity(.50),
    HexColor('#41D9C4').withOpacity(.70),
    //
  ];
  final gradient2 = [
    HexColor('#FF4665').withOpacity(.60),
    HexColor('#FF4665').withOpacity(.60),
    HexColor('#2DCEF8').withOpacity(.70),
    //
    HexColor('#569AFF').withOpacity(.60),
    HexColor('#FCD60F').withOpacity(.40),
    HexColor('#43D1D1').withOpacity(.60),
    //
    HexColor('#FF4665').withOpacity(.60),
    HexColor('#FF4665').withOpacity(.40),
    HexColor('#2DCEF8').withOpacity(.70),
    //
    HexColor('#569AFF').withOpacity(.60),
    HexColor('#FCD60F').withOpacity(.50),
    HexColor('#43D1D1').withOpacity(.60),
    //
    HexColor('#FF4665').withOpacity(.60),
    HexColor('#FF4665').withOpacity(.40),
    HexColor('#2DCEF8').withOpacity(.70),
    //
    HexColor('#569AFF').withOpacity(.60),
    HexColor('#FCD60F').withOpacity(.50),
    HexColor('#43D1D1').withOpacity(.60),
  ];

  final catagoryData = [
    {
      'image': 'assets/img/cata-3.jpg',
      'title': 'Teach',
    },
    {
      'image': 'assets/img/cata-2.jpg',
      'title': 'Coding',
    },
    {
      'image': 'assets/img/cata-1.jpg',
      'title': 'Design',
    },
    //
    {
      'image': 'assets/img/cata-3.jpg',
      'title': 'Teach',
    },
    {
      'image': 'assets/img/cata-2.jpg',
      'title': 'Coding',
    },
    {
      'image': 'assets/img/cata-1.jpg',
      'title': 'Design',
    },
    //
    {
      'image': 'assets/img/cata-3.jpg',
      'title': 'Teach',
    },
    {
      'image': 'assets/img/cata-2.jpg',
      'title': 'Coding',
    },
    {
      'image': 'assets/img/cata-1.jpg',
      'title': 'Design',
    },
    //
    {
      'image': 'assets/img/cata-3.jpg',
      'title': 'Teach',
    },
    {
      'image': 'assets/img/cata-2.jpg',
      'title': 'Coding',
    },
    {
      'image': 'assets/img/cata-1.jpg',
      'title': 'Design',
    },
    //
    {
      'image': 'assets/img/cata-3.jpg',
      'title': 'Teach',
    },
    {
      'image': 'assets/img/cata-2.jpg',
      'title': 'Coding',
    },
    {
      'image': 'assets/img/cata-1.jpg',
      'title': 'Design',
    },
    //
    {
      'image': 'assets/img/cata-3.jpg',
      'title': 'Teach',
    },
    {
      'image': 'assets/img/cata-2.jpg',
      'title': 'Coding',
    },
    {
      'image': 'assets/img/cata-1.jpg',
      'title': 'Design',
    },
    //
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#FBFBFB'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
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
                      text: 'Create New Project',
                      fontFamily: 'Poppins Semi Bold',
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: Get.height,
                width: Get.width,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 14,
                            childAspectRatio: 1,
                          ),
                          shrinkWrap: true,
                          primary: false,
                          itemCount: catagoryData.length,
                          itemBuilder: (BuildContext context, int index) {
                            final image = catagoryData[index];
                            return Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    '${image['image']}',
                                    width: Get.width,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      end: Alignment.topCenter,
                                      begin: Alignment.bottomCenter,
                                      colors: [
                                        gradient1[index],
                                        gradient2[index],
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                    child: KText(
                                      text: '${image['title']}',
                                      fontSize: 15,
                                      color: AppTheme.white,
                                      fontFamily: 'Poppins Semi Bold',
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 0,
          width: Get.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 120,
                blurRadius: 120,
                offset: Offset(10, 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
