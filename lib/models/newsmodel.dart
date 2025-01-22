class Newsmodel{
  List<dynamic> artcicls;
  Newsmodel({required this.artcicls});
  factory Newsmodel.fromjson(Map<String,dynamic>json){
    return Newsmodel(artcicls: json['articles']);
  }
}