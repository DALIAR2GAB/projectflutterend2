import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisionend/provider/newsprovider.dart';

import 'Home.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    String search='';
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME'),
        centerTitle: true,

      ),
      body: Center(
        child:
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             //search
              TextFormField(
                onChanged: (value){
                  search=value;
                },
                decoration: InputDecoration(icon:Icon(Icons.search) ,border: OutlineInputBorder()),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(Category: search,),));
              }, child: Text('SEARCH')),


                ElevatedButton(onPressed: (){
                  Icon(Icons.production_quantity_limits);

                  Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(Category: 'sports',),));
                }, child: Text('sports')),

              SizedBox(height: 10,),

                 ElevatedButton(onPressed: (){
                   Icon(Icons.playlist_add_check);
                   Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(Category: 'business',),));
                }, child: Text('business')),



              SizedBox(height: 10,),
              InkWell(

                child: ElevatedButton(onPressed: (){
                  Icon(Icons.abc_outlined);
                  Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(Category: 'science',),));
                }, child: Text('science')),
              ),

              SizedBox(height: 10,),
              InkWell(

                child: ElevatedButton(onPressed: (){
                  Icon(Icons.policy);
                  Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Homepage(Category: 'politics',),));
                }, child: Text('politics')),
              ),

            ],
          ),
        ),

    );
  }
}
