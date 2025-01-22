import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mywiget1 extends StatelessWidget {
   Mywiget1({required this.controller,required this.extlab,required this.validd,required this.ico});
  TextEditingController controller;
  String? Function(String?) validd;
  String extlab;
  Icon ico;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      TextFormField(
        controller: controller,
        validator: validd,
        decoration: InputDecoration(
          label: Text(extlab,style: TextStyle(color: Colors.white),),
          icon: ico,
          border:  OutlineInputBorder(),
        ),

      ),

    ],
    );
  }
}
