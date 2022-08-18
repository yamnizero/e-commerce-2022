import 'package:ecommerc_2022/core/class/crud.dart';
import 'package:ecommerc_2022/link_api.dart';

class VerifyCodeSignUpData{

  Crud crud;
  VerifyCodeSignUpData(this.crud);

  postData(String email,String verifyCode) async {
    var response = await crud.postData(AppLinkApi.verifyCodeSignUp,{
      "email" : email,
      "verifyCode" : verifyCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}