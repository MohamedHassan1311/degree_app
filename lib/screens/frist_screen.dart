import 'package:degreeapp/widgets/custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:image1project/widgets/custom_text_filed.dart';

class HomeScren extends StatefulWidget {
  static String id = "Home Screen";
  @override
  _HomeScrenState createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  final formkey = GlobalKey<FormState>();
  double degreeSub1;
  double degreeSub2;
  double fainalDegree = 0.0;
  var grada = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var hight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "حساب ماده واحده",
            style: TextStyle(fontFamily: "Changa"),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Form(
            key: formkey,
            child: ListView(children: <Widget>[
              CustomeCard(
                  hint: "ادخل الدرجه",
                  Textfield: "الدرجه الفعليه",
                  num: (value) {
                    degreeSub1 = double.parse(value);
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * .00001,
              ),
              CustomeCard(
                hint: "ادخل الدرجه",
                Textfield: "الدرجه المحصله",
                num: (value) {
                  degreeSub2 = double.parse(value);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: buildRaisedButton(),
                  )
                ],
              )
            ]),
          ),
        ));
  }

  Text buildText(String x) {
    return Text(
      x,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

  buildRaisedButton() {
    return RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.amber,
        child: Text(
          "احسب الدرجه",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          if (formkey.currentState.validate()) {
            formkey.currentState.save();
            setState(() {
              fainalDegree =
                  ((degreeSub2 / degreeSub1) * 100).truncateToDouble();
              if (fainalDegree < 50) {
                grada = "راسب";
              }
              if (fainalDegree >= 50) {
                grada = "مقبول";
              }
              if (fainalDegree >= 65) {
                grada = "جيد";
              }
              if (fainalDegree >= 75) {
                grada = "جيد جدا";
              }
              if (fainalDegree >= 85) {
                grada = "ممتاز";
              }
              ShowDialog(fainalDegree, grada);
            });
          }
        });
  }

  ShowDialog(double x, String y) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "النتيجه",
                        style: TextStyle(
                            fontFamily: 'Changa',
                            backgroundColor: Colors.amber),
                      ),
                    ],
                  ),
                ],
              ),
              content: Container(
                height: MediaQuery.of(context).size.height * .1,
                child: Column(
                  children: <Widget>[
                    Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text("النتيجه هي %$x"),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text(
                          "التقدير هو   $y",
                        )
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.amber,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          " خروج",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }
}
