import 'package:degreeapp/screens/frist_screen.dart';
import 'package:degreeapp/screens/therd_scrren.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = "WelcomrScreen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  double degreeSub1 = 0.0;
  double degreeSub2 = 0.0;
  double fainalDegree = 0.0;
  var grada = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: MediaQuery.of(context).size.height * .3,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(image: AssetImage("assets/photo/icon.png")),
                    Positioned(
                      bottom: 0,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "احسب درجتك",
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'Changa',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: buildRaisedButton("حساب ماده واحده ", HomeScren.id),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: buildRaisedButton("حساب اكثر من ماده ", TheredScreen.id),
            )
          ],
        ));
  }

  buildRaisedButton(String x, var y) {
    return RaisedButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.black,
        child: Text(
          x,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Changa',
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(y);
        });
  }

  void _ShowDialog(double x, String y) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text("congatilation"),
            content: Text("النتيجه هي %$x" +
                "                             "
                    "          "
                    "التقدير هو $y")));
  }
}
//
//onPressed: () {
//setState(() {
//fainalDegree = ((degreeSub2 / degreeSub1) * 100);
//if (fainalDegree < 50) {
//grada = "راسب";
//}
//if (fainalDegree >= 50) {
//grada = "مقبول";
//}
//if (fainalDegree >= 65) {
//grada = "جيد";
//}
//if (fainalDegree >= 75) {
//grada = "جيد جدا";
//}
//if (fainalDegree >= 85) {
//grada = "ممتاز";
//}
//_ShowDialog(fainalDegree, grada);
//});
//}
