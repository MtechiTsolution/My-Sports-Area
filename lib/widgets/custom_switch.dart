import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(key: key);

  final Alignment? alignment;
  final bool? value;
  final Function(bool) onChange;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: alignment != null
          ? Align(
        alignment: alignment ?? Alignment.center,
        child: switchWidget,
      )
          : switchWidget,
    );
  }

  Widget get switchWidget => Switch.adaptive(
    activeColor: Colors.pink, // Set the active color to pink
    value: value ?? false,
    onChanged: (value) {
      onChange(value);
    },
  );
}
