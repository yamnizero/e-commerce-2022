import 'package:ecommerc_2022/core/class/crud.dart';
import 'package:ecommerc_2022/link_api.dart';

class VerifyCodeForgetPasswordData{

  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);

  postData(String email,String verifycode) async {
    var response = await crud.postData(AppLinkApi.verifyCodeForgetPassword,{
      "email" : email,
      "verifycode" : verifycode,

    });
    return response.fold((l) => l, (r) => r);
  }
}