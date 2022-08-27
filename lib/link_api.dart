class AppLinkApi{

  static const String server = "https://ecommerce-app-flutter.000webhostapp.com/ecommerce";
  static const String test = "$server/test.php";

  /// ======================= Auth ==================  ///

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignUp = "$server/auth/verfiycode.php";

/// ======================= ForgetPassword ==================  ///

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeForgetPassword = "$server/forgetpassword/new_verifycode.php";
}