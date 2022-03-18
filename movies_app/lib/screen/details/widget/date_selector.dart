import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/reservation_controller.dart';
import '../../../utils/constants.dart';

class DateSelectorWidget extends StatelessWidget {
  CarouselController _carouselController = CarouselController();
  //
  var _reservController = Get.find<ReservationController>();
  //

  final List<dynamic> _calendar = [
    {'day': 'Wed', 'num': '9'},
    {'day': 'Thu', 'num': '10'},
    {'day': 'Fri', 'num': '11'},
    {'day': 'Sat', 'num': '12'},
    {'day': 'Sun', 'num': '13'},
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      child: FadeInDown(
        delay: Duration(milliseconds: 1200),
        child: Container(
          width: gWidth,
          height: gHeight / 6,
          child: CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
                height: 110,
                viewportFraction: 0.3,
                enlargeCenterPage: true,
                onPageChanged: (index, _) {
                  _reservController.changeingIndex(index);
                }),
            items: _calendar.map((cal) {
              return GetBuilder<ReservationController>(builder: (ctx) {
                return GestureDetector(
                  onTap: () {
                    _reservController.isSelected(cal);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    width: 100,
                    decoration: BoxDecoration(
                        border: _reservController.selectedIndex == cal
                            ? Border.all(
                                color: Color.fromARGB(255, 204, 204, 204),
                                width: 3)
                            : null,
                        borderRadius: BorderRadius.circular(15),
                        color: _reservController.selectedIndex == cal
                            ? Colors.red
                            : Color.fromARGB(255, 226, 226, 226)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              cal['day'],
                              style: TextStyle(
                                color: _reservController.selectedIndex == cal
                                    ? Colors.white
                                    : Color.fromARGB(255, 56, 56, 56),
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            cal['num'],
                            style: TextStyle(
                              color: _reservController.selectedIndex == cal
                                  ? Colors.white
                                  : Color.fromARGB(255, 56, 56, 56),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "\$25",
                            style: TextStyle(
                              color: _reservController.selectedIndex == cal
                                  ? Colors.white
                                  : Color.fromARGB(255, 56, 56, 56),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
            }).toList(),
          ),
        ),
      ),
    );
  }
}
