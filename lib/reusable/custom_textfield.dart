import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String keyVal;
  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.keyVal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(keyVal),
      controller: controller,
      style: Const.kTextStyle,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
