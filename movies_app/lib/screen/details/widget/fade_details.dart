import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class FadeWidgetDetails extends StatelessWidget {
  const FadeWidgetDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140,
      child: FadeInUp(
        child: Container(
          width: gWidth,
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white.withOpacity(1),
                Colors.white.withOpacity(1),
                Colors.white.withOpacity(1),
                Colors.white.withOpacity(1),
                Colors.white.withOpacity(0),
                Colors.white.withOpacity(0),
                Colors.white.withOpacity(0),
                Colors.white.withOpacity(0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
