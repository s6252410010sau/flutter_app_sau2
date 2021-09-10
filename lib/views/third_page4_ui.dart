import 'package:flutter/material.dart';

class ThirdPage4UI extends StatelessWidget {
  const ThirdPage4UI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[200],
      body: Center(
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}