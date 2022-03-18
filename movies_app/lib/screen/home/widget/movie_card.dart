import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../../details/details.dart';
import '../../../controller/card_controller.dart';
import '../../../utils/constants.dart';
import '../widget/repetitious_info.dart';

class MovieCard extends StatelessWidget {
  CarouselController _carouselController = CarouselController();
  var _cardController = Get.find<CardController>();


/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      height: gHeight * 0.7,
      width: gWidth,
      child: GestureDetector(
        onTap: () {
          Get.to(
            () => DetailsScreen(),
          );
        },
        child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              height: gHeight / 1.6,
              aspectRatio: 16 / 9,
              viewportFraction: 0.75,
              enlargeCenterPage: true,
              onPageChanged: (index, _) {
                _cardController.changeIndex(index);
              }),
          items: _cardController.listOfMovies.map(
            (movie) {
              return Builder(
                builder: (ctx) {
                  return Container(
                    width: gWidth,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            height: 300,
                            width: gWidth,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              movie.imageAd,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            movie.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            movie.genre,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RepetitiousIMBd(),
                                RepetitiousTime(),
                                RepetitiousWatch(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
