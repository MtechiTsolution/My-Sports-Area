import 'package:flutter/material.dart';

import '../Utils/size_utils.dart';
import '../theme/theme_helper.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(13.00)),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlueGrayTL32 => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(getHorizontalSize(32.00)),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
        borderRadius: BorderRadius.circular(getHorizontalSize(10.00)),
      );
  static BoxDecoration get fillBlueGrayTL10 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.5),
        borderRadius: BorderRadius.circular(getHorizontalSize(10.00)),
      );
  static BoxDecoration get radiusTL18 => BoxDecoration(
        borderRadius: BorderRadius.circular(getHorizontalSize(18.00)),
      );
}
