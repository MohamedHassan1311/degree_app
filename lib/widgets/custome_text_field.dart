import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  double value = 0.0;
  final onclic;

  CustomTextField({@required this.hint, this.onclic});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.list,
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.black26,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(20)),
        alignLabelWithHint: true,
        hintText: hint,
        labelText: '${value}',
      ),
      validator: (v) {
        if (v.isEmpty) {
          return "ادخل  رقم  ";
        }
        return null;
      },
      onSaved: onclic,
      maxLength: 20,
      keyboardType: TextInputType.number,
    );
  }
}
