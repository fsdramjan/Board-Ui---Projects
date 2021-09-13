import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: KText(
          text: 'Home',
        ),
      ),
    );
  }
}
