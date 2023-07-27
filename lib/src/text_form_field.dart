import 'package:flutter/material.dart';

class OmranTextFormField extends StatelessWidget {
  OmranTextFormField({
    super.key,
    this.filled,
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.onChange,
    this.hintText,
    this.obscureText = false,
    //this.onSubmitted,
    this.validator,
    this.colorHintText,
    this.fillColor,
    this.colorEnabledBorder = const Color(0xFF000000),
    this.coloBorder = const Color(0xFF000000),
    this.colorFocusedBorder = const Color(0xFF000000),
    this.keyboardType,
    this.focusNode,
    this.textInputAction,
    this.onFieldSubmitted,
  });

  TextEditingController? controller;
  String? hintText;
  Widget? prefixIcon;
  BorderRadius borderRadius;

  Widget? suffixIcon;
  bool? filled;
  Color? colorHintText;
  Color? fillColor;
  Color colorEnabledBorder;

  Color colorFocusedBorder;

  Color coloBorder;

  TextInputType? keyboardType;
  FocusNode? focusNode;
  TextInputAction? textInputAction;

  String? Function(String?)? validator;
  Function(String)? onChange;

  //Function(String)? onSubmitted;
  Function(String)? onFieldSubmitted;

  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChange,
      onFieldSubmitted: onFieldSubmitted,

      //onSubmitted: onSubmitted,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: filled,
        fillColor: fillColor,
        hintStyle: TextStyle(
          color: colorHintText,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: colorEnabledBorder,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: colorFocusedBorder,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: coloBorder,
          ),
        ),
      ),
    );
  }
}
