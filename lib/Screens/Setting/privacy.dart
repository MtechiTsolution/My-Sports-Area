import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_3.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_5.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';

class Privacy_setting extends StatefulWidget {
  const Privacy_setting({super.key});

  @override
  State<Privacy_setting> createState() => _Privacy_settingState();
}

class _Privacy_settingState extends State<Privacy_setting> {
  bool LocationOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: CustomAppBar(
        leadingWidth: getHorizontalSize(42),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        centerTitle: true,
        title: AppbarSubtitle(
          text: enUs["lbl_privacy2"]!,
          margin: getMargin(top: 10, bottom: 8),
        ),
        styleType: Style.bgShadow,
      ),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 16, right: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                height: getVerticalSize(321),
                width: getHorizontalSize(360),
                margin: getMargin(top: 31),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: getPadding(top: 53, right: 5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgNext1,
                                    height: getSize(15),
                                    width: getSize(15)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgNext1,
                                    height: getSize(15),
                                    width: getSize(15),
                                    margin: getMargin(top: 41)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgNext1,
                                    height: getSize(15),
                                    width: getSize(15),
                                    margin: getMargin(top: 38)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgNext1,
                                    height: getSize(15),
                                    width: getSize(15),
                                    margin: getMargin(top: 40))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: getPadding(
                                    left: 22, top: 9, right: 22, bottom: 9),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 2),
                                          child: Text(
                                              enUs["msg_last_seen_online"]!,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      Padding(
                                          padding: getPadding(top: 3, right: 3),
                                          child: Text(enUs["lbl_nobody"]!,
                                              style: CustomTextStyles
                                                  .bodyMediumPoppins))
                                    ])),
                            Container(
                                margin: getMargin(top: 10),
                                padding: getPadding(
                                    left: 22, top: 10, right: 22, bottom: 10),
                                decoration: AppDecoration.fillGray20003
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(108),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        enUs[
                                                            "lbl_profile_photo"]!,
                                                        style: theme.textTheme
                                                            .titleSmall)),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        enUs[
                                                            "lbl_profile_photo"]!,
                                                        style: theme.textTheme
                                                            .titleSmall))
                                              ])),
                                      Container(
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(62),
                                          margin: getMargin(right: 3),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        enUs["lbl_nobody"]!,
                                                        style: CustomTextStyles
                                                            .bodyMediumPoppins)),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        enUs["lbl_nobody"]!,
                                                        style: CustomTextStyles
                                                            .bodyMediumPoppins))
                                              ]))
                                    ])),
                            Container(
                                margin: getMargin(top: 10),
                                padding: getPadding(
                                    left: 21, top: 10, right: 21, bottom: 10),
                                decoration: AppDecoration.fillGray20003
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 2),
                                          child: Text(enUs["lbl_about"]!,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      Padding(
                                          padding: getPadding(bottom: 2),
                                          child: Text(enUs["lbl_excluded"]!,
                                              style: CustomTextStyles
                                                  .bodyMediumPoppins))
                                    ])),
                            Container(
                                margin: getMargin(top: 10),
                                padding: getPadding(
                                    left: 19, top: 10, right: 19, bottom: 10),
                                decoration: AppDecoration.fillGray20003
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 3, top: 1),
                                          child: Text(enUs["lbl_groups"]!,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text(enUs["lbl_my_friends"]!,
                                              style: CustomTextStyles
                                                  .bodyMediumPoppins))
                                    ])),



                            Container(
                                margin: getMargin(top: 10),
                                padding: getPadding(
                                    left: 19, top: 10, right: 19, bottom: 10),
                                decoration: AppDecoration.fillGray20003
                                    .copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 3, top: 1),
                                          child: Text("Location",
                                              style:
                                              theme.textTheme.titleSmall)),
                                      Switch(
                                        value: LocationOn,
                                        onChanged: (value) {
                                          setState(() {
                                            LocationOn = value;
                                          });
                                        },
                                        activeColor: Colors
                                            .pink, // Set the toggle button color to pink
                                      ),
                                    ])),

                            Padding(
                                padding: getPadding(left: 10, top: 11),
                                child: Text(enUs["msg_list_of_chats_where"]!,
                                    style: CustomTextStyles.bodySmallLight10))
                          ]))
                ])),
          ])),
    ));
  }

  void onTapArrowsmallright() {
    Navigator.pop(context);
  }
}
