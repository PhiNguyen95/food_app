import 'package:flutter/material.dart';

import '../resources/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key,required this.hintText}) : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      cursorColor: kFoodAppRed,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14),
        contentPadding: const EdgeInsets.fromLTRB(
          kDefaultPadding * 2,
          kDefaultPadding,
          kDefaultPadding * 2,
          kDefaultPadding,
        ),
      ),
    );
  }
}
