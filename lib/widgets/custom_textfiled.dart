import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thinkpeople_test/constants/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.keyboardType,
      required this.obscureText,
      this.controller})
      : super(key: key);
  String? hintText;
  String? labelText;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  // ignore: prefer_typing_uninitialized_variables
  final keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.textFieldsColor,
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            //labelStyle: GoogleFonts.lato(fontSize: 14, color: greenColor),
            hintStyle: GoogleFonts.lato(
                fontSize: 14,
                color: AppColors.buttonColor,
                fontWeight: FontWeight.w700),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textFieldsColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textFieldsColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          )),
    );
  }
}
