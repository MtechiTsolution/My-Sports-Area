
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_8.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../Utils/size_utils.dart';
class ReplyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Padding(
              padding: getPadding(
                top: 9,
                right: 13,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse17,
                    height: getSize(36),
                    width: getSize(36),
                    radius: BorderRadius.circular(
                      getHorizontalSize(18),
                    ),
                    margin: getMargin(
                      top: 5,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: getMargin(
                        left: 19,
                      ),
                      padding: getPadding(
                        left: 19,
                        top: 4,
                        right: 19,
                        bottom: 4,
                      ),
                      decoration: AppDecoration.fillGray40006.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 1,
                            ),
                            child: Text(
                              enUs[ "lbl_tellus"]!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              enUs[  "msg_quis_hendrerit_dolor"]!,
                              style: CustomTextStyles
                                  .bodySmallInterGray800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 20,
                top: 4,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgClose,
                    height: getVerticalSize(26),
                    width: getHorizontalSize(36),
                    margin: getMargin(
                      bottom: 6,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 11,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: Text(
                                  enUs[ "lbl_8w"]!,
                                  style: CustomTextStyles
                                      .labelMediumGray800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 35,
                                  bottom: 1,
                                ),
                                child: Text(
                                  enUs[  "lbl_like"]!,
                                  style: CustomTextStyles
                                      .labelMediumGray800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 34,
                                ),
                                child: Text(
                                  enUs[  "lbl_reply"]!,
                                  style: CustomTextStyles
                                      .labelMediumGray800,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //reply.........


                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 6,
                  top: 8,
                  right: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse16,
                      height: getSize(36),
                      width: getSize(36),
                      radius: BorderRadius.circular(
                        getHorizontalSize(18),
                      ),
                      margin: getMargin(
                        top: 9,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: getMargin(
                          left: 15,
                          bottom: 4,
                        ),
                        padding: getPadding(
                          left: 21,
                          top: 3,
                          right: 21,
                          bottom: 3,
                        ),
                        decoration:
                        AppDecoration.fillGray40006.copyWith(
                          borderRadius:
                          BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              enUs[  "lbl_molestie"]!,
                              style: theme.textTheme.labelLarge,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                                bottom: 3,
                              ),
                              child: Text(
                                enUs[ "msg_quis_hendrerit_dolor"]!,
                                style:
                                CustomTextStyles.labelMediumGray800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 20,
                top: 1,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgClose,
                    height: getVerticalSize(26),
                    width: getHorizontalSize(36),
                    margin: getMargin(
                      bottom: 6,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 11,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: Text(
                                  enUs[  "lbl_8w"]!,
                                  style: CustomTextStyles
                                      .labelMediumGray800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 35,
                                  bottom: 1,
                                ),
                                child: Text(
                                  enUs[   "lbl_like"]!,
                                  style: CustomTextStyles
                                      .labelMediumGray800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 34,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => ReplyScreen()),
                                    // );
                                  },
                                  child: Text(
                                    enUs["lbl_reply"]!,
                                    style: CustomTextStyles.labelMediumGray800,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            enUs["lbl_view_1_reply"]!,
                            style: CustomTextStyles.labelMediumGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}





