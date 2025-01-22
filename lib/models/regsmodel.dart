import 'package:flutter/cupertino.dart';

class Regsmodel{
  Map<String,dynamic> data;
  Regsmodel({required this.data});

  factory Regsmodel.fromjson(Map<String,dynamic>json){
    return Regsmodel(data: json['data']);
  }
}