import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/saved.dart';

class SavedController extends GetxController {
  List<SavedMovie> listOfSaved = [];

  // Method for adding item into saved movie List
  void addItem({
    required String img,
    required String title,
    required String subTitle,
    required String imbd,
  }) {
    var contain = listOfSaved.where((element) => element.img == img);
    if (contain.isEmpty) {
      listOfSaved.add(
          SavedMovie(img: img, title: title, subTitle: subTitle, imbd: imbd));
      Get.snackbar("Notice!", "Added To Saved Movie",
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(milliseconds: 1600),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal);
      update();
    } else {
      Get.snackbar("Warning!", "You have Added this movie before",
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(milliseconds: 1600),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal);
    }
  }

  // Method for removing all items from the saved movie list
  void removeAllItems() {
    listOfSaved = [];
    update();
  }

  // Method for removing single item from saved movie list
  void removeSingleItem(dynamic index) {
    listOfSaved.removeAt(index);
    update();
  }
}
