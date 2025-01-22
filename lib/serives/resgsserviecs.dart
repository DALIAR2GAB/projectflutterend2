import 'package:dio/dio.dart';
import 'package:revisionend/models/regsmodel.dart';

class Regesserviecs{
  static Dio dio=Dio();

    static Future<Regsmodel> getsignup({required String name,required String password,required String email,required String phone})async{
    Map data={'name':name,'password':password,'email':email,'phone':phone};
    Response response=await dio.post('https://student.valuxapps.com/api/register',data: data);
    if(response.statusCode==200){
      print(response.data);
      return Regsmodel.fromjson(response.data);
    }else{
      throw 'Issuse in sign up';
    }
  }

  static Future<Regsmodel> getlogin({required String password,required String email})async{
      Map data={'password':password,'email':email};
      Response response=await dio.post('https://student.valuxapps.com/api/login',data: data);
      if(response.statusCode==200){
        print(response.data);
        return Regsmodel.fromjson(response.data);
      }else{
        throw 'Issuse in login';
      }
  }

}