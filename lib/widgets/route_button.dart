import 'package:flutter/material.dart';

import '../constant.dart';
class RouteButton extends StatelessWidget {
  final String? text;
final Function()? route;
  const RouteButton({this.text, this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: route,
      child: Text(
       text!,
        style: TextStyle(fontSize: 20,color: Colors.white),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            EdgeInsets.fromLTRB(30, 15, 30, 15)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.zero),
        ),
        backgroundColor:
        MaterialStateProperty.all(AppColors.mainColor),
      ),
    );
  }
}
