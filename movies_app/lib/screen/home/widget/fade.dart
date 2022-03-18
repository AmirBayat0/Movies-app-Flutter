import 'package:flutter/material.dart';

class FadeWidget extends StatelessWidget {
  const FadeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.grey.shade100.withOpacity(1),
              Colors.grey.shade100.withOpacity(1),
              Colors.grey.shade100.withOpacity(1),
              Colors.grey.shade100.withOpacity(1),
              Colors.grey.shade100.withOpacity(0),
              Colors.grey.shade100.withOpacity(0),
              Colors.grey.shade100.withOpacity(0),
              Colors.grey.shade100.withOpacity(0),
            ],
          ),
        ),
      ),
    );
  }
}
