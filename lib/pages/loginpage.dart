import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisionend/pages/newhome.dart';
import 'package:revisionend/provider/provider.dart';

import '../widget/widgetresg.dart';
import 'Home.dart';

class Loginpage extends StatelessWidget {
   Loginpage({super.key});
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  final formkey=GlobalKey<FormState>();
  
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

              Text('Log In',style: TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
              SizedBox(height: 90,),
              Mywiget1(
                 controller: passwordcontroller,
                 extlab: 'Enter password:',
                validd: (value) {
                  if(value==null||value.isEmpty){
                    return 'Enter fill data';
                  }
                },
                ico:Icon( Icons.password),
              ),

              SizedBox(height: 20,),
              Mywiget1(
                controller: emailcontroller,
                extlab: 'Enter email:',
                validd: (value) {
                  if(value==null||value.isEmpty){
                    return 'Enter fill data';
                  }
                },
                ico: Icon(Icons.email),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()async{
                if(formkey.currentState!.validate()){
                 await value.fecthlogin(password: passwordcontroller.text, email: emailcontroller.text);
                 var res=value.regsmodel;
                 if(res!=null){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => NewHome(),));
                 }else{
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Sign up field') ));
                 }
                }
              }, child: Text('Log In'))
            ],
          ),
        );
      },),
    );
  }
}
