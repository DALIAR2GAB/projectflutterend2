import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mywidget2 extends StatelessWidget {
   Mywidget2({required this.image,required this.tittle,required this.desc});

  String image;
  String tittle;
  String desc;
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          CircleAvatar(radius: 150,backgroundImage: NetworkImage(image),),
          SizedBox(height: 30,),
          Text(tittle,style: TextStyle( fontSize: 20),),
          SizedBox(height: 20,),
          Text(desc,style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
