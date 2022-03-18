import 'package:get/get.dart';

import '../controller/reservation_controller.dart';
import '../controller/saved_controller.dart';
import '../controller/animation_controller.dart';
import '../controller/card_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardController());
    Get.lazyPut(() => ControllerAnimation());
    Get.put(ReservationController());
    Get.put(SavedController());
  }
}
