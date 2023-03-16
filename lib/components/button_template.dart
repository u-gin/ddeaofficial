import 'package:ddea_official/constants/color_system.dart';
import 'package:flutter/material.dart';

class ButtonTemplate extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final double buttonWidth;
  final VoidCallback buttonAction;
  final Color fontColor;
  final bool loading;

  ButtonTemplate({
    required this.buttonName,
    required this.buttonColor,
    required this.buttonWidth,
    required this.buttonAction,
    required this.fontColor,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: buttonAction,
      color: buttonColor,
      splashColor: ColorSystem.secondary,
      elevation: 2,
      minWidth: buttonWidth,
      height: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15),
      child: loading
          ? SizedBox(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(
                backgroundColor: ColorSystem.white,
                strokeWidth: 1,
              ),
            )
          : Text(
              buttonName,
              style: TextStyle(
                color: fontColor,
                fontSize: 14.0,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500,
              ),
            ),
    );
  }
}
