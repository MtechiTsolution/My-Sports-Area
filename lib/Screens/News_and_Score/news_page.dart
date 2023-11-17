import 'package:flutter/material.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../Home.dart';
import '../HomeScreen/HomeScreen.dart';

class Newspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return


      Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar: CustomAppBar(
            leadingWidth: getHorizontalSize(45),
            leading: AppbarImage1(
                imagePath: ImageConstant.imgHome1,
                margin: getMargin(left: 22, top: 15, bottom: 8),
                onTap: () {
                  // onTapHomethreeone();
                }),
            actions: [
              AppbarImage2(
                  svgPath: ImageConstant.imgPlus,
                  margin:
                  getMargin(left: 26, top: 87, right: 26, bottom: 11),
                  onTap: () {
                    // onTapPlusone();
                  })
            ],
            styleType: Style.bgShadow),
        body: SizedBox(
            width: mediaQueryData.size.width,
            child: SingleChildScrollView(
                padding: getPadding(top: 5),
                child: SizedBox(
                    height: getVerticalSize(1236),
                    width: double.maxFinite,
                    child:
                    Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 25, right: 9),
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
                                                      .imgGroup113)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9,
                                                  top: 4,
                                                  bottom: 4),
                                              child: Text(enUs["lbl_alnassr"]!,
                                                  style: CustomTextStyles
                                                      .titleSmallInter)),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                              ImageConstant.imgSignal,
                                              height: getVerticalSize(6),
                                              width: getHorizontalSize(22),
                                              margin: getMargin(
                                                  top: 10, bottom: 10))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: getHorizontalSize(311),
                                        margin: getMargin(
                                            left: 25, top: 16, right: 56),
                                        child: Text(
                                            enUs["msg_lorem_ipsum_dolor2"]!,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme
                                                .textTheme.bodySmall))),
                                CustomImageView(
                                    imagePath:
                                    ImageConstant.imgRectangle6555,
                                    height: getVerticalSize(262),
                                    width: getHorizontalSize(393),
                                    margin: getMargin(top: 12)),
                                Padding(
                                    padding: getPadding(
                                        left: 25, top: 84, right: 9),
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
                                                      .imgGroup113)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9,
                                                  top: 4,
                                                  bottom: 4),
                                              child: Text(enUs["lbl_alnassr"]!,
                                                  style: CustomTextStyles
                                                      .titleSmallInter)),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                              ImageConstant.imgSignal,
                                              height: getVerticalSize(6),
                                              width: getHorizontalSize(22),
                                              margin: getMargin(
                                                  top: 15, bottom: 5))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: getHorizontalSize(311),
                                        margin: getMargin(
                                            left: 25, top: 6, right: 56),
                                        child: Text(
                                            enUs[  "msg_lorem_ipsum_dolor2"]!,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme
                                                .textTheme.bodySmall))),
                                Container(
                                    height: getVerticalSize(280),
                                    width: double.maxFinite,
                                    margin: getMargin(top: 4),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle6556,
                                              height: getVerticalSize(280),
                                              width: getHorizontalSize(393),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgGroup237816,
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(144),
                                              alignment:
                                              Alignment.bottomCenter,
                                              margin:
                                              getMargin(bottom: 107),
                                              onTap: () {
                                                // onTapImgImagetwo();
                                              })
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 36, top: 16, right: 42),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgThumbsup1,
                                              height: getSize(23),
                                              width: getSize(23)),
                                          Spacer(flex: 51),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCommentdots1,
                                              height: getSize(23),
                                              width: getSize(23),
                                              onTap: () {
                                                //onTapImgCommentdotstwo();
                                              }),
                                          Spacer(flex: 48),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSharesquare4,
                                              height: getSize(25),
                                              width: getSize(25))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 25, top: 45, right: 9),
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
                                                      .imgGroup113)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9,
                                                  top: 4,
                                                  bottom: 5),
                                              child: Text(enUs["lbl_alnassr"]!,
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
                                        ])),
                                Container(
                                    width: getHorizontalSize(338),
                                    margin: getMargin(
                                        left: 25, top: 5, right: 30),
                                    child: Text(enUs["msg_lorem_ipsum_dolor2"]!,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall)),
                                CustomImageView(
                                    imagePath:
                                    ImageConstant.imgRectangle6557,
                                    height: getVerticalSize(278),
                                    width: getHorizontalSize(393),
                                    margin: getMargin(top: 10)),
                                Padding(
                                    padding: getPadding(
                                        left: 36, top: 18, right: 42),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgThumbsup1,
                                              height: getSize(23),
                                              width: getSize(23)),
                                          Spacer(flex: 51),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCommentdots1,
                                              height: getSize(23),
                                              width: getSize(23),
                                              onTap: () {
                                                // onTapImgCommentdotsthre();
                                              }),
                                          Spacer(flex: 48),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSharesquare4,
                                              height: getSize(25),
                                              width: getSize(25))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: getPadding(bottom: 505),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: getHorizontalSize(61),
                                        child: Divider(
                                            color:
                                            theme.colorScheme.primary)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 22,
                                                top: 13,
                                                right: 28,
                                                bottom: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath:
                                                      ImageConstant
                                                          .imgGlobe15,
                                                      height: getSize(26),
                                                      width: getSize(26),
                                                      margin: getMargin(
                                                          top: 5,
                                                          bottom: 2)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMail,
                                                      height:
                                                      getVerticalSize(
                                                          23),
                                                      width:
                                                      getHorizontalSize(
                                                          25),
                                                      margin: getMargin(
                                                          top: 5,
                                                          bottom: 2)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFile,
                                                      height:
                                                      getVerticalSize(
                                                          26),
                                                      width:
                                                      getHorizontalSize(
                                                          22),
                                                      margin: getMargin(
                                                          top: 5,
                                                          bottom: 2)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgComponent14,
                                                      height:
                                                      getVerticalSize(
                                                          25),
                                                      width:
                                                      getHorizontalSize(
                                                          35),
                                                      margin: getMargin(
                                                          top: 5,
                                                          bottom: 2)),
                                                  SizedBox(
                                                      height:
                                                      getVerticalSize(
                                                          33),
                                                      width:
                                                      getHorizontalSize(
                                                          31),
                                                      child: Stack(
                                                          alignment:
                                                          Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgLightbulb,
                                                                height:
                                                                getVerticalSize(
                                                                    29),
                                                                width:
                                                                getHorizontalSize(
                                                                    26),
                                                                alignment:
                                                                Alignment
                                                                    .bottomLeft),
                                                            Align(
                                                                alignment:
                                                                Alignment
                                                                    .topRight,
                                                                child: Container(
                                                                    padding: getPadding(
                                                                        left:
                                                                        5,
                                                                        top:
                                                                        2,
                                                                        right:
                                                                        5,
                                                                        bottom:
                                                                        2),
                                                                    decoration: AppDecoration.fillBlueGray.copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .roundedBorder8),
                                                                    child: Text(
                                                                        enUs[ "lbl_3"
                                                                        ]!,
                                                                        style:
                                                                        theme.textTheme.labelMedium)))
                                                          ])),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTicket,
                                                      height: getSize(31),
                                                      width: getSize(31),
                                                      margin:
                                                      getMargin(top: 2))
                                                ])))
                                  ])))
                    ])))),
        // bottomNavigationBar:
        // CustomBottomBar(onChanged: (BottomBarEnum type) {
        //   Get.toNamed(getCurrentRoute(type), id: 1);
        // })

      );

  }
}
