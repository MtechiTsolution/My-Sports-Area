import 'package:flutter/material.dart';
import '../../Utils/size_utils.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarImage3 extends StatelessWidget {
  AppbarImage3({
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
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(23),
          width: getSize(23),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}