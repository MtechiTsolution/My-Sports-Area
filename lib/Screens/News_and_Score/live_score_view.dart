import 'package:flutter/material.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'score_results.dart';

class Live_Score extends StatelessWidget {
  const Live_Score({super.key});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Score_result()));
        },
        child: Container(
            width: getHorizontalSize(
                204),
            decoration: AppDecoration
                .fillBlueGray
                .copyWith(
                borderRadius: BorderRadiusStyle
                    .roundedBorder5),
            child: Row(
                children: [
                  SizedBox(
                      height: getVerticalSize(
                          91),
                      child: VerticalDivider(
                          width: getHorizontalSize(
                              5),
                          thickness: getVerticalSize(
                              5),
                          color: appTheme
                              .black90001)),
                  Padding(
                      padding: getPadding(
                          left: 11,
                          top: 9,
                          bottom: 11),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start,
                          mainAxisAlignment: MainAxisAlignment
                              .start,
                          children: [
                            Text(
                                enUs["lbl_wed_19_jul"
                                ]!,
                                style: CustomTextStyles
                                    .labelLargeSemiBold),
                            Padding(
                                padding: getPadding(
                                    top: 1),
                                child: Text(
                                    enUs["lbl_friendly"
                                    ]!,
                                    style: CustomTextStyles
                                        .interGray700)),
                            Padding(
                                padding: getPadding(
                                    left: 10,
                                    top: 6),
                                child: Text(
                                    enUs[ "lbl_football2"
                                    ]!,
                                    style: CustomTextStyles
                                        .labelMediumBlack90001SemiBold)),
                            Container(
                                height: getVerticalSize(
                                    20),
                                width: getHorizontalSize(
                                    56),
                                margin: getMargin(
                                    left: 4,
                                    top: 5),
                                child: Stack(
                                    alignment: Alignment
                                        .centerLeft,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgNotification,
                                          height: getVerticalSize(
                                              20),
                                          width: getHorizontalSize(
                                              17),
                                          alignment: Alignment
                                              .centerRight),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgContrast,
                                          height: getVerticalSize(
                                              20),
                                          width: getHorizontalSize(
                                              17),
                                          alignment: Alignment
                                              .centerLeft),
                                      Align(
                                          alignment: Alignment
                                              .bottomLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 20),
                                              child: Text(
                                                  enUs[ "lbl_vs"
                                                  ]!,
                                                  style: CustomTextStyles
                                                      .titleSmallCaveat))),
                                      Align(
                                          alignment: Alignment
                                              .center,
                                          child: Text(
                                              enUs[ "lbl_1_0"]!,
                                              style: CustomTextStyles
                                                  .labelMediumPoppinsPrimaryContainer))
                                    ]))
                          ])),
                  Padding(
                      padding: getPadding(
                          left: 33),
                      child: SizedBox(
                          height: getVerticalSize(
                              91),
                          child: VerticalDivider(
                              width: getHorizontalSize(
                                  1),
                              thickness: getVerticalSize(
                                  1),
                              color: appTheme
                                  .yellowA700,
                              indent: getHorizontalSize(
                                  8),
                              endIndent: getHorizontalSize(
                                  8)))),
                  Padding(
                      padding: getPadding(
                          left: 7,
                          top: 17,
                          bottom: 17),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .start,
                          children: [
                            SizedBox(
                                height: getVerticalSize(
                                    23),
                                width: getHorizontalSize(
                                    66),
                                child: Stack(
                                    alignment: Alignment
                                        .center,
                                    children: [
                                      Align(
                                          alignment: Alignment
                                              .bottomLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  bottom: 1),
                                              child: Text(
                                                  enUs["lbl_live2"
                                                  ]!,
                                                  style: CustomTextStyles
                                                      .interRedA700))),
                                      Align(
                                          alignment: Alignment
                                              .center,
                                          child: SizedBox(
                                              height: getVerticalSize(
                                                  23),
                                              width: getHorizontalSize(
                                                  66),
                                              child: Stack(
                                                  alignment: Alignment
                                                      .bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .topCenter,
                                                        child: Text(
                                                            enUs["lbl_kick_off_18_00"
                                                            ]!,
                                                            style: CustomTextStyles
                                                                .labelSmallGray80001)),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                right: 5),
                                                            child: Text(
                                                                enUs[ "lbl_on_mutv"
                                                                ]!,
                                                                style: CustomTextStyles
                                                                    .labelSmallGray600)))
                                                  ])))
                                    ])),
                            Container(
                                margin: getMargin(
                                    top: 12),
                                padding: getPadding(
                                    left: 3,
                                    top: 4,
                                    right: 3,
                                    bottom: 4),
                                decoration: AppDecoration
                                    .outlineGray
                                    .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder8),
                                child: Text(
                                    enUs[ "lbl_match_review"
                                    ]!,
                                    style: CustomTextStyles
                                        .poppinsGray80001))
                          ]))
                ])),
      );
  }
}
