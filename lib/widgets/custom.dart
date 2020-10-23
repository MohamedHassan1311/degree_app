import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custome_text_field.dart';

class CustomeCard extends StatelessWidget {
  String Textfield;
  final num;
  String hint;
  final ckey = GlobalKey<FormState>();

  CustomeCard({
    @required this.Textfield,
    @required this.hint,
    @required this.num,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        borderOnForeground: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: MediaQuery.of(context).size.height * .1,
        color: Colors.black26,
        child: Container(
          height: MediaQuery.of(context).size.height * .3,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * .1),
                  Text(
                    Textfield,
                    style: TextStyle(fontSize: 20, fontFamily: "Changa"),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: CustomTextField(
//                  onclic: (value) {
//                    num = double.parse(value);
//                  },
                  onclic: num,
                  hint: hint,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
