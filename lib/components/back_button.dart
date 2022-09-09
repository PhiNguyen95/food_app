import 'package:flutter/material.dart';
import '../resources/app_color.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: (45 * (3.1415927 / 180)),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: kFoodAppWhite,
          maximumSize: const Size(50, 60),
          minimumSize: const Size(50, 60),
        ),
        child: Transform.rotate(
          angle: -(45 * (3.1415927 / 180)),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 28,
          ),
        ),
      ),
    );
  }
}
