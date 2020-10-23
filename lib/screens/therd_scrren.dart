import 'dart:ui';

import 'package:degreeapp/widgets/custom_card_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheredScreen extends StatefulWidget {
  static String id = "Th Screen";

  @override
  _TheredScreenState createState() => _TheredScreenState();
}

class _TheredScreenState extends State<TheredScreen> {
  final formkey = GlobalKey<FormState>();
  double sub1 = 0.0;
  double dsub1 = 0.0;
  double dsub2 = 0.0;
  double dsub3 = 0.0;
  double dsub4 = 0.0;
  double dsub5 = 0.0;
  double dsub6 = 0.0;
  double dsub7 = 0.0;

  double sub2 = 0.0;

  double sub3 = 0.0;

  double sub4 = 0.0;

  double sub5 = 0.0;

  double sub6 = 0.0;

  double sub7 = 0.0;
  double fainalDegree;

  String grada;
  double gpa = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "حساب اكتر من ماده ",
          style: TextStyle(fontFamily: "Changa"),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          Form(
            key: formkey,
            child: Container(
                child: Column(
              children: <Widget>[
                CustomeCard2(
                  num: (v) {
                    sub1 = double.parse(v);
                  },
                  Textfield2: " الدرجه الفعليه للماده\nالاولي",
                  num2: (v) {
                    dsub1 = double.parse(v);
                  },
                  Textfield: "الدرجه المحصله ",
                ),
                CustomeCard2(
                  num: (v) {
                    sub2 = double.parse(v);
                  },
                  Textfield2: " الدرجه الفعليه للماد\nالثانيه",
                  num2: (v) {
                    dsub2 = double.parse(v);
                  },
                  Textfield: "الدرجه المحصله ",
                ),
                CustomeCard2(
                  num: (v) {
                    sub3 = double.parse(v);
                  },
                  Textfield2: " الدرجه الفعليه للماد\nالثالثه",
                  num2: (v) {
                    dsub3 = double.parse(v);
                  },
                  Textfield: "الدرجه المحصله ",
                ),
                CustomeCard2(
                  num: (v) {
                    sub4 = double.parse(v);
                  },
                  Textfield2: " الدرجه الفعليه \nالرابعه",
                  num2: (v) {
                    dsub4 = double.parse(v);
                  },
                  Textfield: "الدرجه المحصله ",
                ),
                CustomeCard2(
                  num: (v) {
                    sub5 = double.parse(v);
                  },
                  Textfield2: " الدرجه الفعليه للماد\nالخامسه",
                  num2: (v) {
                    dsub5 = double.parse(v);
                  },
                  Textfield: "الدرجه المحصله ",
                ),
                CustomeCard2(
                  num: (v) {
                    sub6 = double.parse(v);
                  },
                  Textfield2: " الدرجه الفعليه للماده  \nالسادسه",
                  num2: (v) {
                    dsub6 = double.parse(v);
                  },
                  Textfield: "الدرجه المحصله ",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildRaisedButton(),
                  ],
                )
              ],
            )),
          ),
        ]),
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
              fainalDegree = (((sub1 + sub2 + sub3 + sub4 + sub5 + sub6) /
                          (dsub1 + dsub2 + dsub3 + dsub4 + dsub5 + dsub6)) *
                      100)
                  .floorToDouble();

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
                margin: EdgeInsets.only(bottom: .1),
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
                    ),
                    SizedBox(
                      height: 2,
                    ),
//                    Row(
//                      textDirection: TextDirection.rtl,
//                      children: <Widget>[
//                        Text(
//                          " المعدل $gpa ",
//                        )
//                      ],
//                    ),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.amber,
                      child: Container(
                        child: Row(
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
                    ),
                  ],
                )
              ],
            ));
  }
}
