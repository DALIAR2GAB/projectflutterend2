import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisionend/provider/provider.dart';

import '../widget/widgetresg.dart';
import 'loginpage.dart';

class Signuppage extends StatelessWidget {
   Signuppage({super.key});
  final formkey=GlobalKey<FormState>();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Consumer<Regprovider>(builder: (context, value, child) {
         return Form(
           key: formkey,
           child: Column(

             children: [
               SizedBox(height: 20,),

               Text('Register',style: TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
               SizedBox(height: 90,),

                Mywiget1(
                  controller: namecontroller,
                  extlab: 'Enter Name',
                  validd: (value) {
                     if(value==null||value.isEmpty){
                       return 'Enter the fill data';
                     }
                  },
                  ico: Icon(Icons.drive_file_rename_outline),
                ),

               SizedBox(height: 20,),
               Mywiget1(
                 controller: passwordcontroller,
                 extlab: 'Enter password',
                 validd: (value) {
                   if(value==null||value.isEmpty){
                     return 'Enter the fill data';
                   }
                 },
                 ico: Icon(Icons.password),
               ),
               SizedBox(height: 20,),
               Mywiget1(
                 controller: emailcontroller,
                 extlab: 'Enter email',
                 validd: (value) {
                   if(value==null||value.isEmpty){
                     return 'Enter the fill data';
                   }
                 },
                 ico: Icon(Icons.email),
               ),

               SizedBox(height: 20,),
               Mywiget1(
                 controller: phonecontroller,
                 extlab: 'Enter phone',
                 validd: (value) {
                   if(value==null||value.isEmpty){
                     return 'Enter the fill data';
                   }
                 },
                 ico: Icon(Icons.phone),
               ),
               SizedBox(height: 30,),
               ElevatedButton(onPressed: ()async{
                   if(formkey.currentState!.validate())
                   {
                     await value.fetchsignup(name: namecontroller.text, password: passwordcontroller.text, email: emailcontroller.text, phone: phonecontroller.text);
                     var res=value.regsmodel;
                     if(res!=null){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
                     }else{
                       ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Signup failed. Please try again.'),),
                       );
                     }
                   }
               }, child: Text('Sign Up'))
             ],
           ),
         );
      },),
    );
  }
}
