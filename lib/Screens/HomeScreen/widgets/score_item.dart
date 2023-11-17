import 'package:flutter/material.dart';

import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';

class Score_item extends StatefulWidget {
  const Score_item({super.key});

  @override
  State<Score_item> createState() => _Score_itemState();
}

class _Score_itemState extends State<Score_item> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(top: 20),
        padding: getPadding(left: 23, top: 4, right: 23, bottom: 4),
        decoration: AppDecoration.outlineBlack900013
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: getPadding(top: 14),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(enUs["lbl_basketball2"]!,
                                style: theme.textTheme.titleLarge),
                            Spacer(),
                            Padding(
                                padding: getPadding(bottom: 4),
                                child: Text(enUs["lbl_live3"]!,
                                    style: CustomTextStyles
                                        .titleSmallInterRedA700)),
                            Container(
                                height: getSize(5),
                                width: getSize(5),
                                margin: getMargin(left: 2, top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                    color: appTheme.redA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(2))))
                          ]))),
              Padding(
                  padding: getPadding(left: 4, top: 5, right: 4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 10),
                                  child: Text(enUs["lbl_amateur"]!,
                                      style: theme.textTheme.labelLarge)),
                              Container(
                                  width: getHorizontalSize(214),
                                  margin: getMargin(top: 1),
                                  padding: getPadding(
                                      left: 14, top: 9, right: 14, bottom: 9),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text(
                                                          enUs["lbl_apt"]!,
                                                          style: CustomTextStyles
                                                              .bodyMedium15)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 59, top: 3),
                                                      child: Text(
                                                          enUs["lbl_win"]!,
                                                          style: CustomTextStyles
                                                              .labelLargeKrubSecondaryContainer)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 61, bottom: 3),
                                                      child: Text(
                                                          enUs["lbl_3"]!,
                                                          style: CustomTextStyles
                                                              .bodyMediumLight))
                                                ])),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(top: 10),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(159),
                                                    child: Divider(
                                                        color: appTheme
                                                            .gray600)))),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text(
                                                      enUs["lbl_camp_club"]!,
                                                      style: CustomTextStyles
                                                          .titleSmallInter15)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 79, bottom: 5),
                                                  child: Text(enUs["lbl_1"]!,
                                                      style: CustomTextStyles
                                                          .bodyMediumLight))
                                            ]))
                                      ]))
                            ]),
                        Padding(
                            padding: getPadding(bottom: 7),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(enUs["lbl_start_1_00am"]!,
                                      style:
                                          CustomTextStyles.bodySmallInter12_1),
                                  Padding(
                                      padding: getPadding(top: 5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomElevatedButton(
                                                width: getHorizontalSize(24),
                                                text: enUs["lbl_0"]!,
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimaryContainer,
                                                onTap: () {
                                                  // onTapZero1();
                                                }),
                                            CustomElevatedButton(
                                                width: getHorizontalSize(24),
                                                text: enUs["lbl_1"]!,
                                                margin: getMargin(left: 7),
                                                buttonStyle: CustomButtonStyles
                                                    .fillYellowA,
                                                onTap: () {
                                                  // onTapOne2();
                                                }),
                                            CustomElevatedButton(
                                                width: getHorizontalSize(24),
                                                text: enUs["lbl_3"]!,
                                                margin: getMargin(left: 7),
                                                buttonStyle:
                                                    CustomButtonStyles.fillRedA,
                                                onTap: () {
                                                  //onTapThree2();
                                                })
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomElevatedButton(
                                                width: getHorizontalSize(24),
                                                text: enUs["lbl_2"]!,
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimaryContainer,
                                                onTap: () {
                                                  // onTapTwo2();
                                                }),
                                            Container(
                                                margin: getMargin(left: 7),
                                                padding: getPadding(
                                                    left: 7,
                                                    top: 6,
                                                    right: 7,
                                                    bottom: 6),
                                                decoration: AppDecoration
                                                    .fillYellowA
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Text(enUs["lbl_5"]!,
                                                    style: CustomTextStyles
                                                        .titleSmallInterMedium15)),
                                            Container(
                                                margin: getMargin(left: 7),
                                                padding: getPadding(
                                                    left: 8,
                                                    top: 6,
                                                    right: 8,
                                                    bottom: 6),
                                                decoration: AppDecoration
                                                    .fillRedA
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Text(enUs["lbl_1"]!,
                                                    style: CustomTextStyles
                                                        .titleSmallInterMedium15))
                                          ]))
                                ]))
                      ])),

            ]));
  }
}
