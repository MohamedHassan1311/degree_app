import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custome_text_field.dart';

class CustomeCard2 extends StatelessWidget {
  String Textfield;
  String Textfield2;
  final num;
  final num2;

  final ckey = GlobalKey<FormState>();

  CustomeCard2(
      {@required this.Textfield,
      @required this.num,
      @required this.num2,
      @required this.Textfield2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 1),
                  borderOnForeground: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: MediaQuery.of(context).size.height * .1,
                  color: Colors.black26,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .03,
                          ),
                          Text(
                            Textfield,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Changa",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .05,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: CustomTextField(
                              onclic: num,
                              hint: "",
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Card(
                  borderOnForeground: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: MediaQuery.of(context).size.height * .1,
                  color: Colors.black26,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .03,
                          ),
                          Text(
                            Textfield2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Changa",
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .02,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: CustomTextField(
                              onclic: num2,
                              hint: "",
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
