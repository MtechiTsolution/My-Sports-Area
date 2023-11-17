import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';

class Club_relationship extends StatefulWidget {
  const Club_relationship({super.key});

  @override
  State<Club_relationship> createState() => _Club_relationshipState();
}

class _Club_relationshipState extends State<Club_relationship> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: getPadding(top: 23),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: getMargin(right: 10),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(
                      borderRadius: BorderRadiusStyle
                          .roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment
                          .start,
                      children: [
                        SizedBox(
                            height: getVerticalSize(
                                101),
                            width: getHorizontalSize(
                                167),
                            child: Stack(
                                alignment: Alignment
                                    .bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment
                                          .topCenter,
                                      child: SizedBox(
                                          height: getVerticalSize(
                                              67),
                                          width: getHorizontalSize(
                                              167),
                                          child: Stack(
                                              alignment: Alignment
                                                  .topRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle6645,
                                                    height: getVerticalSize(
                                                        67),
                                                    width: getHorizontalSize(
                                                        167),
                                                    radius: BorderRadius
                                                        .vertical(
                                                        top: Radius
                                                            .circular(
                                                            getHorizontalSize(
                                                                10))),
                                                    alignment: Alignment
                                                        .center),
                                                Align(
                                                    alignment: Alignment
                                                        .topRight,
                                                    child: Container(
                                                        height: getSize(
                                                            17),
                                                        width: getSize(
                                                            17),
                                                        padding: getPadding(
                                                            all: 5),
                                                        decoration: AppDecoration
                                                            .fillPrimaryContainer
                                                            .copyWith(
                                                            borderRadius: BorderRadiusStyle
                                                                .roundedBorder8),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgClose110,
                                                            height: getSize(
                                                                7),
                                                            width: getSize(
                                                                7),
                                                            alignment: Alignment
                                                                .center)))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgEllipse53,
                                      height: getSize(
                                          74),
                                      width: getSize(
                                          74),
                                      radius: BorderRadius
                                          .circular(
                                          getHorizontalSize(
                                              37)),
                                      alignment: Alignment
                                          .bottomCenter)
                                ])),
                        Container(
                            height: getVerticalSize(26),
                            width: getHorizontalSize(
                                79),
                            margin: getMargin(top: 2),
                            child: Stack(
                                alignment: Alignment
                                    .bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment
                                          .topCenter,
                                      child: Text(
                                          enUs["lbl_seaf"]!,
                                          style: CustomTextStyles
                                              .labelLargePoppinsBold)),
                                  Align(
                                      alignment: Alignment
                                          .bottomCenter,
                                      child: Text(
                                          enUs[ "msg_footboll_defender"
                                          ]!,
                                          style: CustomTextStyles
                                              .labelSmallBold8))
                                ])),
                        Text(enUs["lbl_landon"]!,
                            style: theme.textTheme
                                .labelSmall),
                        Padding(
                            padding: getPadding(top: 2),
                            child: Text(
                                enUs[ "msg_106_relationships"]!,
                                style: CustomTextStyles
                                    .labelSmallMedium)),
                        CustomElevatedButton(
                            height: getVerticalSize(20),
                            width: getHorizontalSize(
                                138),
                            text: enUs["lbl_add"]!,
                            margin: getMargin(
                                top: 4, bottom: 6),
                            buttonStyle: CustomButtonStyles
                                .fillPrimaryTL10,
                            buttonTextStyle: CustomTextStyles
                                .labelLargePoppinsPrimaryContainer)
                      ])),
              Container(
                  margin: getMargin(left: 10),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(
                      borderRadius: BorderRadiusStyle
                          .roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment
                          .start,
                      children: [
                        SizedBox(
                            height: getVerticalSize(101),
                            width: getHorizontalSize(167),
                            child: Stack(
                                alignment: Alignment
                                    .bottomCenter,
                                children: [
                                  Align(alignment: Alignment
                                      .topCenter,
                                      child: SizedBox(
                                          height: getVerticalSize(
                                              67),
                                          width: getHorizontalSize(
                                              167),
                                          child: Stack(
                                              alignment: Alignment
                                                  .topRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle6647,
                                                    height: getVerticalSize(
                                                        67),
                                                    width: getHorizontalSize(
                                                        167),
                                                    radius: BorderRadius
                                                        .vertical(
                                                        top: Radius
                                                            .circular(
                                                            getHorizontalSize(
                                                                10))),
                                                    alignment: Alignment
                                                        .center),
                                                Align(
                                                    alignment: Alignment
                                                        .topRight,
                                                    child: Container(
                                                        height: getSize(
                                                            17),
                                                        width: getSize(
                                                            17),
                                                        padding: getPadding(
                                                            all: 5),
                                                        decoration: AppDecoration
                                                            .fillPrimaryContainer
                                                            .copyWith(
                                                            borderRadius: BorderRadiusStyle
                                                                .roundedBorder8),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgClose110,
                                                            height: getSize(
                                                                7),
                                                            width: getSize(
                                                                7),
                                                            alignment: Alignment
                                                                .center)))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgEllipse52,
                                      height: getSize(74),
                                      width: getSize(74),
                                      radius: BorderRadius
                                          .circular(
                                          getHorizontalSize(
                                              37)),
                                      alignment: Alignment
                                          .bottomCenter)
                                ])),
                        Padding(padding: getPadding(top: 2),
                            child: Text(
                                enUs[ "lbl_wloud_benaibou"]!,
                                style: CustomTextStyles
                                    .labelLargePoppinsBold)),
                        Text(
                            enUs["msg_rugby_3_line_center"]!,
                            style: CustomTextStyles
                                .labelSmallBold8),
                        Text(enUs["lbl_landon"]!,
                            style: theme.textTheme
                                .labelSmall),
                        Padding(padding: getPadding(top: 2),
                            child: Text(
                                enUs[ "msg_106_relationships"]!,
                                style: CustomTextStyles
                                    .labelSmallMedium)),
                        CustomElevatedButton(
                            height: getVerticalSize(20),
                            width: getHorizontalSize(138),
                            text: enUs["lbl_add"]!,
                            margin: getMargin(
                                top: 4, bottom: 6),
                            buttonStyle: CustomButtonStyles
                                .fillPrimaryTL10,
                            buttonTextStyle: CustomTextStyles
                                .labelLargePoppinsPrimaryContainer)
                      ]))
            ]));

  }
}
