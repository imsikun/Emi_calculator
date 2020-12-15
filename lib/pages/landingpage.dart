import 'package:emi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: smallIntro()),
          SizedBox(
            height: 15.0,
          ),
          emiInfo(),
        ],
      ),
    ));
  }
}

Widget smallIntro() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          kHeading,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 40.0,
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          kDescription,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 17.0,
              color: kTextColor,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget emiInfo() {
  return Container(
    width: 500.0,
    height: 380.0,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 2.0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kWhatisEmi,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                  color: kWhatisEmiTextColor,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              kWhatisEmiDesc,
              textAlign: TextAlign.start,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 14.0,
                  color: kWhatisEmiTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  color: kMoreInfoBackground,
                  onPressed: () {
                    launch(
                        'https://www.investopedia.com/terms/e/equated_monthly_installment.asp');
                  },
                  child: Text(
                    kMoreInfoText,
                    style: GoogleFonts.openSans(textStyle: TextStyle()),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: RaisedButton(
                    color: kCalculateColor,
                    onPressed: () {},
                    child: Text(
                      kCalculateCta,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          // color: kCalculateTextColor,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
