import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff70B0D2),
        Color(0xff38eaba),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Icon(Icons.menu,color: Colors.white,size: 40,),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 10,top: 10),
    );
  }
}
