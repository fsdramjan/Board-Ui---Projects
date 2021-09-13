import 'package:board_ui/src/configs/appTheme.dart';
import 'package:flutter/material.dart';

final searchPage = InputDecoration(
  border: InputBorder.none,
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  prefixIcon: Icon(
    Icons.search,
    size: 27,
    color: AppTheme.textColor,
  ),
  // Image.asset(
  //   'assets/icon/search1.png',
  //   color: AppTheme.textColor,
  // ),
  hintText: 'What skill are you looking for ...',
  hintStyle: TextStyle(
    fontSize: 14,
    color: AppTheme.textColor2,
  ),
);
