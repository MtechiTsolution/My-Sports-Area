import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Entertainment/entertainment.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_button.dart';
import '../../widgets/app_bar/appbar_circleimage.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_7.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';

class Entertainment_Result extends StatefulWidget {
  const Entertainment_Result({super.key});

  @override
  State<Entertainment_Result> createState() => _Entertainment_ResultState();
}

class _Entertainment_ResultState extends State<Entertainment_Result> {
  @override
  Widget build(BuildContext context) {
    return

      SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primaryContainer,
              appBar: CustomAppBar(
                  leadingWidth: getHorizontalSize(43),
                  leading: AppbarImage1(
                      imagePath: ImageConstant.imgHome1,
                      margin: getMargin(left: 20, top: 10, bottom: 13)),
                  centerTitle: true,
                  title: AppbarSubtitle(
                      text:enUs[ "lbl_entertainment"]!,
                      margin: getMargin(top: 10, bottom: 8)),
                  styleType: Style.bgShadow),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 17, right: 17),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: getMargin(left: 1, top: 36),
                            padding: getPadding(
                                left: 3, top: 15, right: 3, bottom: 15),
                            decoration: AppDecoration.outlineBlack900016.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder18),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 23, top: 17),
                                      child: Text(enUs["msg_here_s_how_you_did"]!,
                                          style: CustomTextStyles
                                              .titleSmallInterMedium)),
                                  Padding(
                                      padding: getPadding(left: 40, top: 33),
                                      child: Row(children: [
                                        Text(enUs["lbl_footboll"]!,
                                            style: theme.textTheme.displaySmall),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgAccept11,
                                            height: getSize(21),
                                            width: getSize(21),
                                            margin: getMargin(
                                                left: 12, top: 13, bottom: 8))
                                      ])),
                                  Padding(
                                      padding:
                                      getPadding(left: 5, top: 20, right: 38),
                                      child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text(enUs["lbl_score"]!,
                                                          style: CustomTextStyles
                                                              .titleLargeMedium),
                                                      Padding(
                                                          padding:
                                                          getPadding(top: 12),
                                                          child: Text(
                                                             enUs[ "lbl_0_5"]!,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleLarge)),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  top: 42),
                                                              child: Text(
                                                                 enUs[ "lbl_time"]!,
                                                                  style: CustomTextStyles
                                                                      .headlineSmallBlack90001))),
                                                      Padding(
                                                          padding:
                                                          getPadding(top: 11),
                                                          child: Text(
                                                              enUs["lbl_1_12_min"]!,
                                                              style: CustomTextStyles
                                                                  .titleLargeMedium))
                                                    ])),
                                            Padding(
                                                padding: getPadding(left: 13),
                                                child: SizedBox(
                                                    height: getVerticalSize(178),
                                                    child: VerticalDivider(
                                                        width:
                                                        getHorizontalSize(1),
                                                        thickness:
                                                        getVerticalSize(1),
                                                        color: appTheme.gray600,
                                                        endIndent:
                                                        getHorizontalSize(
                                                            90)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 41,
                                                    top: 6,
                                                    bottom: 110),
                                                child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text(enUs["lbl_tier"]!,
                                                          style: CustomTextStyles
                                                              .titleLargeRegular),
                                                      Padding(
                                                          padding:
                                                          getPadding(top: 12),
                                                          child: Text(enUs["lbl_4"]!,
                                                              style: CustomTextStyles
                                                                  .titleLargeBlack900))
                                                    ])),
                                            Padding(
                                                padding: getPadding(left: 42),
                                                child: SizedBox(
                                                    height: getVerticalSize(178),
                                                    child: VerticalDivider(
                                                        width:
                                                        getHorizontalSize(1),
                                                        thickness:
                                                        getVerticalSize(1),
                                                        color: appTheme.gray600,
                                                        endIndent:
                                                        getHorizontalSize(
                                                            90)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 35, bottom: 110),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text(enUs["lbl_pts"]!,
                                                          style: CustomTextStyles
                                                              .titleLargeMedium),
                                                      Padding(
                                                          padding:
                                                          getPadding(top: 17),
                                                          child: Text(
                                                            enUs[  "lbl_0_5"]!,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleLarge))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 5, top: 12),
                                      child: Text(enUs["lbl_40_mins_allowed"]!,
                                          style:
                                          CustomTextStyles.bodyMediumLight)),
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.3,
                                      margin: getMargin(left: 2, top: 20),
                                      padding: getPadding(all: 12),
                                      decoration: AppDecoration.fillBlueGray
                                          .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .circleBorder25),
                                      child: SingleChildScrollView(
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(enUs["lbl_review"]!,
                                                  style: CustomTextStyles
                                                      .headlineSmallBlack90001),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 10, right: 5),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Expanded(
                                                            child: SizedBox(
                                                                width:
                                                                getHorizontalSize(
                                                                    253),
                                                                child: Text(
                                                                   enUs[ "msg_who_is_the_best3"
                                                                        ]!,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCheckmark21,
                                                            height: getSize(22),
                                                            width: getSize(22),
                                                            margin: getMargin(
                                                                left: 41,
                                                                top: 3,
                                                                bottom: 12))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 13, right: 5),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: SizedBox(
                                                            width:
                                                            getHorizontalSize(
                                                                249),
                                                            child: Text(
                                                               enUs[ "msg_who_is_the_best4"
                                                                    ]!,
                                                                maxLines: 2,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium))),
                                                    CustomImageView(
                                                        imagePath:
                                                        ImageConstant.imgCross1,
                                                        height: getSize(21),
                                                        width: getSize(21),
                                                        margin: getMargin(
                                                            left: 45,
                                                            top: 7,
                                                            bottom: 6))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 10, right: 5),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Expanded(
                                                            child: SizedBox(
                                                                width:
                                                                getHorizontalSize(
                                                                    253),
                                                                child: Text(
                                                                    enUs[ "msg_who_is_the_best3"
                                                                    ]!,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCheckmark21,
                                                            height: getSize(22),
                                                            width: getSize(22),
                                                            margin: getMargin(
                                                                left: 41,
                                                                top: 3,
                                                                bottom: 12))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 13, right: 5),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: SizedBox(
                                                            width:
                                                            getHorizontalSize(
                                                                249),
                                                            child: Text(
                                                                enUs[ "msg_who_is_the_best4"
                                                                ]!,
                                                                maxLines: 2,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium))),
                                                    CustomImageView(
                                                        imagePath:
                                                        ImageConstant.imgCross1,
                                                        height: getSize(21),
                                                        width: getSize(21),
                                                        margin: getMargin(
                                                            left: 45,
                                                            top: 7,
                                                            bottom: 6))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 13, right: 5),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: SizedBox(
                                                            width:
                                                            getHorizontalSize(
                                                                249),
                                                            child: Text(
                                                                enUs[ "msg_who_is_the_best4"
                                                                ]!,
                                                                maxLines: 2,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium))),
                                                    CustomImageView(
                                                        imagePath:
                                                        ImageConstant.imgCross1,
                                                        height: getSize(21),
                                                        width: getSize(21),
                                                        margin: getMargin(
                                                            left: 45,
                                                            top: 7,
                                                            bottom: 6))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 10, right: 5),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Expanded(
                                                            child: SizedBox(
                                                                width:
                                                                getHorizontalSize(
                                                                    253),
                                                                child: Text(
                                                                    enUs[ "msg_who_is_the_best3"
                                                                    ]!,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCheckmark21,
                                                            height: getSize(22),
                                                            width: getSize(22),
                                                            margin: getMargin(
                                                                left: 41,
                                                                top: 3,
                                                                bottom: 12))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 13, right: 5),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: SizedBox(
                                                            width:
                                                            getHorizontalSize(
                                                                249),
                                                            child: Text(
                                                                enUs[ "msg_who_is_the_best4"
                                                                ]!,
                                                                maxLines: 2,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium))),
                                                    CustomImageView(
                                                        imagePath:
                                                        ImageConstant.imgCross1,
                                                        height: getSize(21),
                                                        width: getSize(21),
                                                        margin: getMargin(
                                                            left: 45,
                                                            top: 7,
                                                            bottom: 6))
                                                  ])),

                                            ]),
                                      )),
                                  CustomElevatedButton(
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(76),
                                    text: enUs["lbl_finsh"]!,
                                    margin: getMargin(top: 24, right: 14),
                                    buttonTextStyle: CustomTextStyles.labelMediumPrimaryContainer,
                                    onTap: () {
                                      //onTapFinsh();
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>EntertainmentScreen()));
                                      Navigator.pop(context);
                                    },
                                    alignment: Alignment.centerRight,

                                  ),

                                ])),

                      ])),

          ));
  }
}



