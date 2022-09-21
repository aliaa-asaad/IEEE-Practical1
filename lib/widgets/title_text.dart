import 'package:flutter/material.dart';
import 'package:practical1/constant.dart';

class TitleText extends StatelessWidget {
  final String? title;

  const TitleText({this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title!,
          style: TextStyle(
              color: AppColors.mainColor,
              fontSize: 35,
              fontWeight: FontWeight.bold)),
    );
  }
}
