import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: gWidth,
      height: gHeight / 12,
      child: FadeInUp(
        delay: Duration(milliseconds: 1000),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 0,
          onPressed: () {},
          color: Colors.red,
          child: FittedBox(
              child: Text(
            "Buy Now",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
