// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/color_system.dart';

class AppbarTemplate extends StatelessWidget {
  final String appBarTitle;
  const AppbarTemplate({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
        child: Text(
          appBarTitle,
          style: TextStyle(
            color: ColorSystem.black,
            fontSize: 20.0,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
