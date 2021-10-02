import 'package:flutter/material.dart';
import 'package:thinkpeople_test/constants/colors.dart';
import 'package:thinkpeople_test/constants/text_styles.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.buttontext,
    this.press,
  }) : super(key: key);

  String? buttontext;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
      alignment: Alignment.center,
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(9)),
          color: AppColors.buttonColor,
          boxShadow: [
            BoxShadow(
              color: Color(0xffB5FAA9),
              offset: Offset(8.0, 8.0),
              blurRadius: 6.0,
              spreadRadius: 2.0,
            )
          ]),
      child: Text(
        '$buttontext',
        style: AppStyles.textStyle,
      ),
    );
  }
}
