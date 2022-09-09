import 'package:flutter/material.dart';

import '../resources/app_style.dart';
import 'back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const BackButtonCustom(),
        Expanded(
          child: Align(
            child: Text(
              title,
              style: CustomStyle.titleBlack(context),
            ),
          ),
        ),
      ],
    );
  }
}
