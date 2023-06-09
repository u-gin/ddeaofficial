import 'package:flutter/material.dart';
import '../constants/color_system.dart';

class DropdownTemplate extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final double width;
  final double height;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool enabled;
  final double leftContentPadding;

  const DropdownTemplate({
    required this.hintText,
    required this.controller,
    required this.obscureText,
    required this.width,
    required this.height,
    required this.textInputType,
    required this.textInputAction,
    required this.enabled,
    this.leftContentPadding = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorSystem.gray,
      ),
      child: Center(
        child: TextField(
          key: key,
          controller: controller,
          obscureText: obscureText,
          autofocus: false,
          enabled: enabled,
          maxLines: 1,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          autocorrect: false,
          decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.only(
              left: leftContentPadding,
              right: 14.0,
            ),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorSystem.primary)),
            hintStyle: TextStyle(
              color: ColorSystem.hintTextColor,
              fontSize: 14.0,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w500,
            ),
            hintText: hintText,
          ),
          style: TextStyle(
            color: ColorSystem.black,
            fontSize: 16.0,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
