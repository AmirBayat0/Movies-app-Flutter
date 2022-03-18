import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/card_controller.dart';
import '../../../controller/saved_controller.dart';
import '../../../controller/animation_controller.dart';
import '../../../controller/reservation_controller.dart';
import '../../saved/saved_screen.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  //
  var _reservController = Get.find<ReservationController>();
  var _cardController = Get.find<CardController>();
  var _animeController = Get.find<ControllerAnimation>();
  var _savedController = Get.find<SavedController>();
  //
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: FadeInDown(
        delay: Duration(milliseconds: 300),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
                _animeController.runAnime();
                _reservController.setToZero();
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => SavedMovieScreen());
                },
                icon: Icon(Icons.shopping_cart_outlined)),
            IconButton(
              onPressed: () {
                _savedController.addItem(
                  img: _cardController
                      .listOfMovies[_cardController.currentIndex.value].imageAd,
                  title: _cardController
                      .listOfMovies[_cardController.currentIndex.value].title,
                  subTitle: _cardController
                      .listOfMovies[_cardController.currentIndex.value].genre,
                  imbd: _cardController
                      .listOfMovies[_cardController.currentIndex.value].iMBd,
                );
              },
              icon: Icon(Icons.bookmark_add_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
