import 'package:get/get.dart';

class ReservationController extends GetxController {
  var current = 0;
  dynamic selectedIndex = 0;

  void setToZero(){
    selectedIndex = 0;
    update();
  }

  void changeingIndex(var index) {
    current = index;
    update();
  }

  void isSelected(var cal) {
    if (selectedIndex == cal) {
      selectedIndex = 0;
    } else {
      selectedIndex = cal;
    }
    update();
  }
}
