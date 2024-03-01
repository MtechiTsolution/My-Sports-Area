import 'package:flutter/material.dart';
import '../../../Utils/them.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isDarkMode;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final int? maxLines;
  final int minLines;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  CustomTextField({
    required this.hintText,
    required this.isDarkMode,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.maxLines,
    this.minLines = 1,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    Color fillColor = isDarkMode ? AppColors.darkBackground : AppColors.white;

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelStyle: labelText.Lebl_Text(isDarkMode),
        contentPadding:
            EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.pink),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.pink),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.pink),
        ),
        filled: true,
        fillColor: fillColor,
      ),
      cursorColor: AppColors.pink,
      maxLines: maxLines,
      keyboardType: keyboardType,
      minLines: minLines,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
