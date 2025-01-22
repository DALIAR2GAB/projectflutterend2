import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisionend/provider/newsprovider.dart';

import '../widget/newswidget.dart';
import 'detailes.dart';

class Homepage extends StatelessWidget {
   Homepage({required this.Category});
   String Category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        centerTitle: true,
        backgroundColor: Colors.pink[100],

      ),
      body: Consumer<Newsprovider>(builder: (context, value, child) {
         var res=value.newsmodel;
         if(res==null)
           {
             value.fetchdata(categroy: Category);
             return Center(child: CircularProgressIndicator(),);
           }else{
            return ListView.builder(
              itemCount: res.artcicls.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Detailes( image: res.artcicls[index]['urlToImage'],tittle: res.artcicls[index]['title'],desc: res.artcicls[index]['description']  ,content: res.artcicls[index]['content'],),));
                  },
                  child: Mywidget2(
                    image: res.artcicls[index]['urlToImage']??'null image',
                    tittle: res.artcicls[index]['title']??'null tittle',
                    desc: res.artcicls[index]['description']??'null descrption',
                  ),
                );
            },);
         }
      },),
    );
  }
}
