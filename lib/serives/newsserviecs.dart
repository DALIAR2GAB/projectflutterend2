import 'package:dio/dio.dart';
import 'package:revisionend/models/newsmodel.dart';

class Newsserices{
  static Dio dio=Dio();

  static Future<Newsmodel>getdata({required String category})async{
    Response response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=8ec595f59826456a88202286ceff5c82');
    if(response.statusCode==200){
      return Newsmodel.fromjson(response.data);
    }else{
      throw 'Issus in data';
    }
  }
}