class AppLinkApi {
  /// ======================= Link => server ==================  ///
  static const String server = "https://ecommerce-app-flutter.000webhostapp.com/ecommerce";

  /// ======================= imagesApp ==================  ///
  static const String imagesApp =
      "https://ecommerce-app-flutter.000webhostapp.com/ecommerce/upload";
  static const String imagesCategories = "$imagesApp/categories";
  static const String imagesItems = "$imagesApp/items";
  static const String test = "$server/test.php";

  /// ======================= Auth ==================  ///

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignUp = "$server/auth/verfiycode.php";

  /// ======================= ForgetPassword ==================  ///

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeForgetPassword =
      "$server/forgetpassword/new_verifycode.php";

  /// ======================= Home ==================  ///

  /// home
  static const String homePage = "$server/home.php";
  /// items
  static const String items = "$server/items/items.php";
  ///Favorite
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
}
