import 'package:flutter/material.dart';

import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarCircleimage1 extends StatelessWidget {
  AppbarCircleimage1({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder15,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(41),
          width: getSize(41),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(14),
          ),
        ),
      ),
    );
  }
}
