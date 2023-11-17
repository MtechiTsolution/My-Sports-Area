import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_image_3.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_4.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../Notifications/notification_setting.dart';
import '../Setting/setting.dart';

class Club_profile extends StatefulWidget {
  const Club_profile({super.key});

  @override
  State<Club_profile> createState() => _Club_profileState();
}

class _Club_profileState extends State<Club_profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      // appBar: CustomAppBar(
      //     centerTitle: true,
      //     leading: InkWell(
      //         onTap: (){
      //           Navigator.pop(context);
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
      //         )),
      //     title: AppbarSubtitle4(
      //         text: enUs["msg_world_football_club"]!,
      //         margin: getMargin(top: 10, bottom: 8)),
      //     actions: [
      //       AppbarImage2(
      //           imagePath: ImageConstant.imgSetting1,
      //           margin: getMargin(left: 13, top: 10, right: 13, bottom: 7),
      //           onTap: () {
      //             //onTapSettingoneone();
      //           })
      //     ],
      //     styleType: Style.bgShadow),

          appBar: CustomAppBar(
            leadingWidth: getHorizontalSize(42),
            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },

                child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
            centerTitle: true,
            title: AppbarSubtitle(
              text: enUs["msg_world_football_club"]!,
              margin: getMargin(top: 10, bottom: 8),
            ),
            actions: [
              AppbarImage2(
                imagePath: ImageConstant.imgSetting1,
                margin: getMargin(left: 13, top: 10, right: 13, bottom: 8),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
                  //onTapSettingtwoone();
                },
              ),
            ],
            styleType: Style.bgShadow,
          ),
      body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
              child: SizedBox(
                  height: getVerticalSize(1946),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(229),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle6558160x393,
                                            height: getVerticalSize(160),
                                            width: getHorizontalSize(393),
                                            alignment: Alignment.topCenter),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(right: 14),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  enUs[
                                                                      "lbl_world_club"]!,
                                                                  style: CustomTextStyles
                                                                      .titleLargeSemiBold),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPen1,
                                                                  height:
                                                                      getSize(15),
                                                                  width:
                                                                      getSize(15),
                                                                  margin:
                                                                      getMargin(
                                                                          top: 2,
                                                                          bottom:
                                                                              7),
                                                                  onTap: () {
                                                                    //  onTapImgPenoneone();
                                                                  })
                                                            ]),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    210),
                                                            margin:
                                                                getMargin(top: 3),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: enUs[
                                                                              "lbl_sports_team"]!,
                                                                          style: CustomTextStyles
                                                                              .labelLargeSemiBold_1),
                                                                      TextSpan(
                                                                          text: enUs[
                                                                              "msg_the_offical_acount"]!,
                                                                          style: CustomTextStyles
                                                                              .bodySmallInter12)
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left))
                                                      ]))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: getVerticalSize(92),
                                                  width: getHorizontalSize(87),
                                                  margin: getMargin(
                                                      left: 26, bottom: 16),
                                                  decoration: AppDecoration
                                                      .outlineBlack900012,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle655987x87,
                                                            height: getSize(87),
                                                            width: getSize(87),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        43)),
                                                            alignment: Alignment
                                                                .topCenter),
                                                        CustomIconButton(
                                                            height: getSize(21),
                                                            width: getSize(21),
                                                            padding: getPadding(
                                                                all: 4),
                                                            decoration:
                                                                IconButtonStyleHelper
                                                                    .fillBlack,
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup44))
                                                      ]))),
                                        )
                                      ])),
                              Padding(
                                  padding: getPadding(top: 9),
                                  child: Divider(color: appTheme.black90001)),
                              Padding(
                                  padding:
                                      getPadding(left: 45, top: 7, right: 60),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgScore1,
                                        height: getSize(25),
                                        width: getSize(25)),
                                    Spacer(flex: 53),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgCity1,
                                        height: getSize(21),
                                        width: getSize(21),
                                        margin: getMargin(top: 4)),
                                    Spacer(flex: 46),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPin1,
                                        height: getSize(23),
                                        width: getSize(23))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 32, top: 2, right: 45),
                                  child: Row(children: [
                                    SizedBox(
                                        width: getHorizontalSize(53),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: enUs["lbl_sport"]!,
                                                  style: CustomTextStyles
                                                      .labelLargeBold),
                                              TextSpan(
                                                  text: enUs["lbl_football2"]!,
                                                  style: CustomTextStyles
                                                      .bodySmallInter12)
                                            ]),
                                            textAlign: TextAlign.center)),
                                    Spacer(flex: 51),
                                    SizedBox(
                                        width: getHorizontalSize(33),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: enUs["lbl_city"]!,
                                                  style: CustomTextStyles
                                                      .labelLargeBold),
                                              TextSpan(
                                                  text: enUs["lbl_delhi"]!,
                                                  style: CustomTextStyles
                                                      .bodySmallInter12)
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Spacer(flex: 48),
                                    SizedBox(
                                        width: getHorizontalSize(50),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: enUs["lbl_region2"]!,
                                                  style: CustomTextStyles
                                                      .labelLargeBold),
                                              TextSpan(
                                                  text: enUs["lbl_france"]!,
                                                  style: CustomTextStyles
                                                      .bodySmallInter12)
                                            ]),
                                            textAlign: TextAlign.left))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Divider(color: appTheme.black90001)),
                              Padding(
                                  padding: getPadding(left: 10, top: 5),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFootball1,
                                        height: getSize(16),
                                        width: getSize(16)),
                                    Padding(
                                        padding: getPadding(left: 13),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: enUs["lbl_est"]!,
                                                  style: CustomTextStyles
                                                      .labelLargePrimary),
                                              TextSpan(
                                                  text: enUs["lbl_1921"]!,
                                                  style: CustomTextStyles
                                                      .labelLargeBlack900Bold)
                                            ]),
                                            textAlign: TextAlign.left))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 10, top: 12),
                                  child: Row(children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRanking1,
                                              height: getSize(13),
                                              width: getSize(13)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCategories3,
                                              height: getSize(15),
                                              width: getSize(15),
                                              margin: getMargin(top: 17))
                                        ]),
                                    Container(
                                        width: getHorizontalSize(88),
                                        margin: getMargin(left: 14),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: enUs["lbl_trophies2"]!,
                                                  style: CustomTextStyles
                                                      .labelLargePrimary),
                                              TextSpan(
                                                  text: enUs["lbl_22x"]!,
                                                  style: CustomTextStyles
                                                      .labelLargeBold),
                                              TextSpan(
                                                  text: enUs["lbl_national2"]!,
                                                  style: CustomTextStyles
                                                      .labelLargePrimary),
                                              TextSpan(
                                                  text: enUs["lbl_2x"]!,
                                                  style: CustomTextStyles
                                                      .labelLargeBold)
                                            ]),
                                            textAlign: TextAlign.left))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Divider(color: appTheme.black90001)),
                              Padding(
                                  padding: getPadding(left: 16, top: 6),
                                  child: Text(enUs["lbl_comment"]!,
                                      style:
                                          CustomTextStyles.labelLargeBold_1)),
                              Container(
                                  width: getHorizontalSize(275),
                                  margin:
                                      getMargin(left: 16, top: 10, right: 16),
                                  child: Text(enUs["msg_apies_ava_performed"]!,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: getPadding(top: 2),
                                  child: Divider(color: appTheme.black90001)),
                              Padding(
                                  padding: getPadding(left: 16, top: 11),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgDataprocessing,
                                        height: getSize(18),
                                        width: getSize(18)),
                                    Padding(
                                        padding: getPadding(left: 12),
                                        child: Text(
                                            enUs["msg_experience_course"]!,
                                            style: CustomTextStyles
                                                .titleSmallInter_1))
                                  ])),
                              Container(
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(129),
                                  margin: getMargin(left: 16, top: 6),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                enUs["msg_do_13_2023_dunkirk"]!,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                enUs["msg_do_13_2023_dunkirk"]!,
                                                style:
                                                    theme.textTheme.labelLarge))
                                      ])),
                              Container(
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(79),
                                  margin: getMargin(left: 16, top: 6),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(enUs["lbl_m_2013_sbf"]!,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(enUs["lbl_m_2013_sbf"]!,
                                                style:
                                                    theme.textTheme.labelLarge))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgTrophy1,
                                        height: getSize(18),
                                        width: getSize(18)),
                                    Padding(
                                        padding: getPadding(left: 12),
                                        child: Text(
                                            enUs["msg_national_trophies"]!,
                                            style: CustomTextStyles
                                                .titleSmallInter_1))
                                  ])),
                              Container(
                                  width: getHorizontalSize(203),
                                  margin: getMargin(left: 16, top: 7),
                                  child: Text(enUs["msg_champion_france"]!,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelLarge!
                                          .copyWith(height: 1.67))),
                              Container(
                                  height: getVerticalSize(34),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 11),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(top: 1),
                                                child: SizedBox(
                                                    width: double.maxFinite,
                                                    child: Divider(
                                                        color: appTheme
                                                            .black90001)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 16),
                                                child: Text(
                                                    enUs[
                                                        "msg_activity_or_publication"]!,
                                                    style: CustomTextStyles
                                                        .labelLargeBold_1))),

                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 10, right: 19),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomIconButton(
                                                height: getSize(26),
                                                width: getSize(26),
                                                padding: getPadding(all: 5),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup116)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 9, top: 4, bottom: 4),
                                                child: Text(
                                                    enUs["lbl_alnassr"]!,
                                                    style: CustomTextStyles
                                                        .titleSmallInter)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSignal,
                                                height: getVerticalSize(6),
                                                width: getHorizontalSize(22),
                                                margin: getMargin(
                                                    top: 12, bottom: 8))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(311),
                                  margin:
                                      getMargin(left: 26, top: 16, right: 55),
                                  child: Text(enUs["msg_lorem_ipsum_dolor2"]!,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodySmallInter9)),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle6555262x392,
                                  height: getVerticalSize(262),
                                  width: getHorizontalSize(392),
                                  margin: getMargin(left: 1, top: 14)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 37, top: 18, right: 41),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgThumbsup1,
                                                height: getSize(23),
                                                width: getSize(23)),
                                            Spacer(flex: 51),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCommentdots1,
                                                height: getSize(23),
                                                width: getSize(23),
                                                onTap: () {
                                                  //  onTapImgCommentdotsone();
                                                }),
                                            Spacer(flex: 48),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSharesquare4,
                                                height: getSize(25),
                                                width: getSize(25))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 41, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: getSize(26),
                                                width: getSize(26),
                                                padding: getPadding(all: 5),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup116)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 9, top: 4, bottom: 5),
                                                child: Text(
                                                    enUs["lbl_alnassr"]!,
                                                    style: CustomTextStyles
                                                        .titleSmallInter)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSignal,
                                                height: getVerticalSize(6),
                                                width: getHorizontalSize(22),
                                                margin: getMargin(
                                                    top: 7, bottom: 13))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(338),
                                      margin: getMargin(
                                          left: 26, top: 6, right: 29),
                                      child: Text(
                                          enUs["msg_lorem_ipsum_dolor2"]!,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallInter9))),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle6556280x392,
                                  height: getVerticalSize(280),
                                  width: getHorizontalSize(392),
                                  margin: getMargin(left: 1, top: 7)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 37, top: 30, right: 41),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgThumbsup1,
                                                height: getSize(23),
                                                width: getSize(23)),
                                            Spacer(flex: 51),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCommentdots1,
                                                height: getSize(23),
                                                width: getSize(23),
                                                onTap: () {
                                                  //   onTapImgCommentdotsfour();
                                                }),
                                            Spacer(flex: 48),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSharesquare4,
                                                height: getSize(25),
                                                width: getSize(25))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 31, right: 19),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: getSize(26),
                                                width: getSize(26),
                                                padding: getPadding(all: 5),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup116)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 9, top: 4, bottom: 5),
                                                child: Text(
                                                    enUs["lbl_alnassr"]!,
                                                    style: CustomTextStyles
                                                        .titleSmallInter)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSignal,
                                                height: getVerticalSize(6),
                                                width: getHorizontalSize(22),
                                                margin: getMargin(
                                                    top: 13, bottom: 7))
                                          ]))),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle6557278x392,
                                  height: getVerticalSize(278),
                                  width: getHorizontalSize(392),
                                  margin: getMargin(left: 1, top: 37)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 37, top: 16, right: 41),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgThumbsup1,
                                                height: getSize(23),
                                                width: getSize(23)),
                                            Spacer(flex: 51),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCommentdots1,
                                                height: getSize(23),
                                                width: getSize(23),
                                                onTap: () {
                                                  //   onTapImgCommentdotsthre();
                                                }),
                                            Spacer(flex: 48),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSharesquare4,
                                                height: getSize(25),
                                                width: getSize(25))
                                          ])))
                            ])),

                  ])))),
    ));
  }
}
