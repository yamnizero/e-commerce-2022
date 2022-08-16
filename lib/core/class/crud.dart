import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerc_2022/core/function/check_internet.dart';
import 'Statusrequest.dart';
import 'package:http/http.dart' as http;

/// create-read-update-delete

class Crud{
  Future<Either<StatusRequest,Map>> postData(String linkUrl,Map data) async {
   try {
     if(await checkInternet()){
       var response = await http.post(Uri.parse(linkUrl), body: data);
       print(response.statusCode);
       if(response.statusCode == 200 || response.statusCode == 201){
         Map responseBody = jsonDecode(response.body);
         print(responseBody);
         return Right(responseBody);

       }else{
         return const Left(StatusRequest.serverfailure);
       }
     }else{
       return const Left(StatusRequest.offlinefailure);
     }
   } catch(_){
     return const Left(StatusRequest.serverException);
   }
  }
}