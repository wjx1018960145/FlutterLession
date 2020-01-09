

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as Convert;
typedef HttpRequestSuccessroBlock<T> = void Function (T id);
typedef HttpRequestErrorBlock<T> = void Function (T id);

class  HttpRequest {

  HttpRequest(String url);

  static void httpGet(String url,HttpRequestSuccessroBlock successroBlock,HttpRequestErrorBlock  errorBlock,{Map<String,String> param})async{
    try{
      http.Response response = await http.get(url,headers:param);
     final statusCode = response.statusCode;
     final body = response.body;
     print('[uri=$url][statusCode=$statusCode][response=$body]');
      var res = Convert.jsonDecode(body);
      successroBlock(res);
    }on Expanded  catch (e){
      errorBlock(e);
      print('error+$e');
    }
  }

  static void httpPost(String url,dynamic body, HttpRequestSuccessroBlock successroBlock,HttpRequestErrorBlock  errorBlock,{Map<String,String> param})async{
    try{
      http.Response response = await http.post(url,body:body,headers: param);
      final statusCode = response.statusCode;
      final responseBody = response.body;
      var res = Convert.jsonDecode(responseBody);
       print('[uri=$url][statusCode=$statusCode][response=$body]');
      successroBlock(res);
    }on Expanded catch(e){
      errorBlock(e);
    }
  }

  static void request() async{

  }


  
}