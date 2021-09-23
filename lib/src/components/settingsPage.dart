// import 'package:board_ui/src/widgets/kText.dart';
// import 'package:flutter/material.dart';

// class SettingsPage extends StatelessWidget {
//   SettingsPage({Key? key}) : super(key: key);

//   final padding = EdgeInsets.symmetric(horizontal: 40);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(),
//                   KText(
//                     text: 'Settings',
//                     fontSize: 17,
//                     fontFamily: 'Poppins Semi Bold',
//                   ),
//                   Icon(
//                     Icons.arrow_forward_ios,
//                     size: 18,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),

              
              
//               // SizedBox(height: 50),
//               // listTile(
//               //   () {},
//               //   'Jobs',
//               //   'assets/icon/job-setting.png',
//               // ),
//               // SizedBox(height: 10),
//               // listTile(
//               //   () {},
//               //   'Account Settings',
//               //   'assets/icon/settings.png',
//               // ),
//               // SizedBox(height: 10),
//               // listTile1(
//               //   () {},
//               //   'Refund Policy',
//               //   'assets/icon/refund-setting.png',
//               // ),
//               // SizedBox(height: 10),
//               // listTile1(
//               //   () {},
//               //   'FAQs',
//               //   'assets/icon/faq-setting.png',
//               // ),
//               // SizedBox(height: 10),
//               // listTile1(
//               //   () {},
//               //   'Rate our App',
//               //   'assets/icon/star.png',
//               // ),
//               // SizedBox(height: 10),
//               // listTile1(
//               //   () {},
//               //   'Change Password',
//               //   'assets/icon/lock-setting.png',
//               // ),
//               // SizedBox(height: 10),
//               // listTile1(
//               //   () {},
//               //   'Logout',
//               //   'assets/icon/logout-setting.png',
//               // ),
//               // SizedBox(height: 10),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget listTile1(
//     void Function()? onTap,
//     String text,
//     String img,
//   ) {
//     return ListTile(
//       tileColor: Colors.grey.shade100,
//       onTap: onTap,
//       leading: Image.asset(
//         img,
//         width: 20,
//       ),
//       title: KText(
//         text: text,
//         fontFamily: 'Poppins Medium',
//       ),
//     );
//   }

//   Widget listTile(
//     void Function()? onTap,
//     String text,
//     String img,
//   ) {
//     return ListTile(
//       tileColor: Colors.grey.shade100,
//       onTap: onTap,
//       leading: Image.asset(
//         img,
//         width: 20,
//       ),
//       title: KText(
//         text: text,
//         fontFamily: 'Poppins Medium',
//       ),
//       trailing: Icon(
//         Icons.arrow_forward_ios,
//         size: 16,
//         color: Colors.black,
//       ),
//     );
//   }
  
// }
