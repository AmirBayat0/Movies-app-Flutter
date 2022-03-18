import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../controller/card_controller.dart';

class DirAndWrInfo extends StatelessWidget {
  
  var _cardController = Get.find<CardController>();
  
  

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 360,
      left: 20,
      right: 10,
      child: FadeInDown(
        delay: Duration(milliseconds: 700),
        child: Container(
          width: gWidth,
          child: Row(
            children: [
              Container(
                width: 160,
                child: FittedBox(
                  child: RichText(
                    text: TextSpan(
                      text: 'Director',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' : ',
                        ),
                        TextSpan(
                            text:
                                "${_cardController.listOfMovies[_cardController.currentIndex.value].director}",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(" | "),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 180,
                child: FittedBox(
                  child: RichText(
                    text: TextSpan(
                      text: 'Writer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' : ',
                        ),
                        TextSpan(
                            text:
                                "${_cardController.listOfMovies[_cardController.currentIndex.value].writer}",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
