import 'package:flutter/material.dart';
import 'package:revisionend/models/newsmodel.dart';
import 'package:revisionend/serives/newsserviecs.dart';

class Newsprovider extends ChangeNotifier{
  Newsmodel?newsmodel;

  Future<void> fetchdata({required String categroy})async{
    newsmodel=await Newsserices.getdata(category: categroy);
    notifyListeners();
  }
}