import 'package:get/get.dart';

class FavoriteController extends  GetxController{
  ///create map
  ///key => id items
  ///value => 1 or 0
  Map isFavorite = {};

  setFavorite(id , value){
    isFavorite[id] = value;
    update();
  }

}