import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailes extends StatelessWidget {
  Detailes({required this.image,required this.desc,required this.tittle,required this.content});
  String image;
  String tittle;
  String desc;
  String content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             CircleAvatar(
               radius: 150,
               backgroundImage: NetworkImage(image),
             ),
            SizedBox(height: 10,),
            Text(tittle),
            SizedBox(height: 20,),
            Text(desc),
            SizedBox(height: 10,),
            Text(content),
          ],
        ),
      ),
    );
  }
}
