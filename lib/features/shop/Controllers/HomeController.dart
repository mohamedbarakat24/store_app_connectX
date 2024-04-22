import 'package:get/get.dart';

class HomeController extends GetxController{
static HomeController get instance=>Get.find();

final  carousel_CurrnetIndex = 0.obs;

void updatePageIndicator(index){
  carousel_CurrnetIndex.value=index;
}



}