import 'package:flutter/material.dart';
import 'package:revisionend/models/regsmodel.dart';

import '../serives/resgsserviecs.dart';

class Regprovider extends ChangeNotifier{
  Regsmodel?regsmodel;
   Future<void> fetchsignup({required String name,required String password,required String email,required String phone})async{
    regsmodel=await Regesserviecs.getsignup(name: name, password: password, email: email, phone: phone);
    notifyListeners();
  }

  Future<void> fecthlogin({required String password,required String email})async{
     regsmodel=await Regesserviecs.getlogin(password: password, email: email) ;
     notifyListeners();
  }
}