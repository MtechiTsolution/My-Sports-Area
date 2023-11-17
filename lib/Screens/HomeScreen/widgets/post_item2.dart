import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';

class post_item2 extends StatelessWidget {
  const post_item2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: getPadding(left: 24, right: 24,top: 0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Image.asset(
                    ImageConstant.imgGroup113, // Set the image path here
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                    padding: getPadding(
                        left: 9, top: 4, bottom: 4),
                    child: Text(enUs["lbl_alnassr"]!,
                        style: CustomTextStyles
                            .titleSmallInter)),
                Spacer(),
                CustomImageView(
                    svgPath: ImageConstant.imgSignal,
                    height: getVerticalSize(6),
                    width: getHorizontalSize(22),
                    margin: getMargin(top: 9, bottom: 11))
              ])),
      Align(
          alignment: Alignment.centerLeft,
          child: Container(
              width: getHorizontalSize(311),
              margin:
              getMargin(left: 25, top: 16, right: 56),
              child: Text(enUs["msg_lorem_ipsum_dolor2"]!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall))),
      CustomImageView(
          imagePath: ImageConstant.imgRectangle6556,
          height: getVerticalSize(262),
          width: getHorizontalSize(393),
          margin: getMargin(top: 12)),
      Padding(
          padding: getPadding(left: 36, top: 18, right: 42),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgThumbsup1,
                    height: getSize(23),
                    width: getSize(23)),
                Spacer(flex: 51),
                CustomImageView(
                    imagePath:
                    ImageConstant.imgCommentdots1,
                    height: getSize(23),
                    width: getSize(23),
                    onTap: () {
                      // onTapImgCommentdotsone();
                    }),
                Spacer(flex: 51),
                CustomImageView(
                    imagePath:
                    ImageConstant.imgSharesquare4,
                    height: getSize(25),
                    width: getSize(25),
                    onTap: () {
                      // onTapImgSharesquareone();
                    })
              ])),

    ],);
  }
}
