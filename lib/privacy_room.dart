import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secureit_app/privacy_screen_1.dart';
import 'room_page.dart';

class PrivacyRoom extends StatelessWidget {
  String privacyText = "If you use the internet, a lot of information about you"
      " is publicly available for anyone to see. \n\nHowever, how do you protect "
      "yourself against fraud and fake emails? How do you make sure your "
      "information is not in the wrong hands? \n\nLearn more "
      "about how to defend yourself on the internet in this room!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              elevation: 2.0,
              backgroundColor: Color(0xff392850),
              title: Text('All rooms',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0)),
            )),
        body: Container(
          decoration: BoxDecoration(color: Color(0xff392850)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  height: 100,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/fingerprint.png"),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Container(
                child: Text(
                  'Privacy',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0),
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xff453658),
                  border: Border.all(color: Color(0xff453658)),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: EdgeInsets.fromLTRB(10, 2, 20, 0),
                child: Text(
                  privacyText,
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.0),
              ),
              RaisedButton(
                padding: const EdgeInsets.all(8.0),
                color: Color(0xffebae34),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => PrivacyScreen1()));
                },
                child: Text(
                  'Play Room',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16)),
                ),
              ),
            ],
          ),
        ));
  }
}
