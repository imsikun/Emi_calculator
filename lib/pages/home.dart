import 'package:emi_calculator/constants/constants.dart';
import 'package:emi_calculator/pages/landingpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kAppbar,
        centerTitle: true,
        title: Text(
          kAppbarText,
          style: TextStyle(
            color: kTextColor,
          ),
        ),
      ),
      body: LandingPage(),
    );
  }
}
