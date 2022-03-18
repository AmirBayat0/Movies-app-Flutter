import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/animation_controller.dart';
import '../../../controller/card_controller.dart';
import '../../../utils/constants.dart';

class MainPic extends StatelessWidget {
  //...
  var _cardController = Get.find<CardController>();
  var _animeController = Get.find<ControllerAnimation>();
  //...
  @override
  Widget build(BuildContext context) {
    Get.find<ControllerAnimation>().runAnime();
    return Obx(
      () {
        return FadeTransition(
          opacity: _animeController.opacityAnime,
          child: ScaleTransition(
            scale: _animeController.scaleAnime,
            child: SizedBox(
              width: gWidth,
              height: gHeight / 1.6,
              child: Hero(
                tag: _cardController.currentIndex.value,
                child: Image.asset(
                  Get.find<CardController>()
                      .listOfMovies[_cardController.currentIndex.value]
                      .imageAd,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
