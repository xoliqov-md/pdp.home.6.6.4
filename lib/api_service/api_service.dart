import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled6/models/post_model.dart';
import 'package:untitled6/models/response_model.dart';

class ApiService{

  static Map<String, String> headers = {"Content-Type":"application/json; charset=UTF-8"};
  static String  GET_API = "/api/v1/delete/719";
  static String BASE = "dummy.restapiexample.com";

  static Future<String?> POST(String api,Map<String,String> params) async{
    var uri = Uri.http(BASE,api,params);
    var response = await delete(uri,headers: headers);
    if(response.statusCode==200){
      return response.body;
    }
    return null;
  }

//  HTTP params

  static Map<String, String> paramsPost(){
    Map<String,String> params = {};
    return params;
  }

  static RePost parsePost(String json){
    dynamic j = jsonDecode(json);
    var rs = RePost.fromJson(j);
    return rs;
  }
}