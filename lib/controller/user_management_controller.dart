
import 'package:get/get.dart';

class UserManagmentController extends GetxController {
  var isCompleted = false.obs; 


    var selectedIndex= 0.obs;
  void changeTab(int index){
    selectedIndex.value= index;
  }
}
