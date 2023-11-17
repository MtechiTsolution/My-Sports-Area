import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Relationship/widget/_club.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';
import '../player_profile.dart';
import 'club_profile.dart';

class RelationshipScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: CustomAppBar(
        leadingWidth: getHorizontalSize(42),
        leading: AppbarImage1(
          imagePath: ImageConstant.imgHome1,
          margin: getMargin(left: 19, top: 10, bottom: 13),
        ),
        centerTitle: true,
        title: AppbarSubtitle(
          text: enUs["lbl_relationship"]!,
          margin: getMargin(top: 10, bottom: 6),
        ),
        actions: [
          AppbarImage2(
            imagePath: ImageConstant.imgUser11,
            margin: getMargin(left: 20, top: 10, right: 20, bottom: 13),
          ),
        ],
        styleType: Style.bgShadow,
      ),
      body:

      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.center,
              child: CustomSearchBar(
                controller: searchController,
                onClear: () {
                  searchController.clear();
                },
              ),
            ),
          ),

          Container(
            width: getHorizontalSize(336),
            margin: getMargin(top: 6, right: 17),
            child: Text(
              enUs["msg_build_relationships"]!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePoppins,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CustomSearchBar is placed here and won't scroll


                  Container(
                    height: getVerticalSize(189),
                    width: getHorizontalSize(354),
                    margin: getMargin(top: 28),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: getVerticalSize(119),
                                  width: getHorizontalSize(167),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: getVerticalSize(72),
                                          width: getHorizontalSize(166),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant.imgRectangle6641,
                                                height: getVerticalSize(73),
                                                width: getHorizontalSize(167),
                                                radius: BorderRadius.vertical(
                                                  top: Radius.circular(
                                                    getHorizontalSize(10),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: getSize(17),
                                                  width: getSize(17),
                                                  padding: getPadding(all: 5),
                                                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                    borderRadius: BorderRadiusStyle.roundedBorder8,
                                                  ),
                                                  child: CustomImageView(
                                                    onTap: (){

                                                    },
                                                    imagePath: ImageConstant.imgClose110,
                                                    height: getSize(7),
                                                    width: getSize(7),
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        onTap: (){
                                          OnTabProfile(context);
                                        },
                                        imagePath: ImageConstant.imgEllipse50,
                                        height: getSize(74),
                                        width: getSize(74),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(37),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: getMargin(bottom: 15),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          enUs["lbl_wloud_benaibou"]!,
                                          style: CustomTextStyles.labelLargePoppinsBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                
                                
                                
                                Text(
                                  enUs["msg_rugby_3_line_center"]!,
                                  style: CustomTextStyles.labelSmallBold8,
                                ),
                                Text(
                                  enUs["lbl_landon"]!,
                                  style: theme.textTheme.labelSmall,
                                ),
                                Padding(
                                  padding: getPadding(top: 3),
                                  child: Text(
                                    enUs["msg_106_relationships"]!,
                                    style: CustomTextStyles.labelSmallMedium,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: getVerticalSize(19),
                                  width: getHorizontalSize(138),
                                  text: enUs["lbl_add"]!,
                                  margin: getMargin(top: 3, bottom: 6),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                  buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // onTapColumnclosesixt();
                            },
                            child: Container(
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: getVerticalSize(142),
                                    width: getHorizontalSize(167),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            height: getVerticalSize(73),
                                            width: getHorizontalSize(167),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant.imgRectangle6643,
                                                  height: getVerticalSize(73),
                                                  width: getHorizontalSize(167),
                                                  radius: BorderRadius.vertical(
                                                    top: Radius.circular(
                                                      getHorizontalSize(10),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: getSize(17),
                                                    width: getSize(17),
                                                    padding: getPadding(all: 5),
                                                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                      borderRadius: BorderRadiusStyle.roundedBorder8,
                                                    ),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant.imgClose110,
                                                      height: getSize(7),
                                                      width: getSize(7),
                                                      alignment: Alignment.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Club_profile()));
                                          },
                                          imagePath: ImageConstant.imgEllipse51,
                                          height: getSize(74),
                                          width: getSize(74),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(37),
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: getMargin(top: 30),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 59),
                                            child: Text(
                                              enUs["lbl_france2"]!,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(bottom: 22),
                                            child: Text(
                                              enUs["lbl_zinedine"]!,
                                              style: CustomTextStyles.labelLargePoppinsBold,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 47, bottom: 12),
                                            child: Text(
                                              enUs["lbl_soccer_coach"]!,
                                              style: CustomTextStyles.labelSmallBold8,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(
                                      enUs["msg_sod_comman_addmissions"]!,
                                      style: CustomTextStyles.labelSmallMedium,
                                    ),
                                  ),
                                  CustomElevatedButton(
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(138),
                                    text: enUs["lbl_add"]!,
                                    margin: getMargin(top: 4, bottom: 6),
                                    buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                    buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Club_relationship(),
                  Container(
                    height: getVerticalSize(189),
                    width: getHorizontalSize(354),
                    margin: getMargin(top: 28),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: getVerticalSize(119),
                                  width: getHorizontalSize(167),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: getVerticalSize(73),
                                          width: getHorizontalSize(167),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant.imgRectangle6641,
                                                height: getVerticalSize(73),
                                                width: getHorizontalSize(167),
                                                radius: BorderRadius.vertical(
                                                  top: Radius.circular(
                                                    getHorizontalSize(10),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: getSize(17),
                                                  width: getSize(17),
                                                  padding: getPadding(all: 5),
                                                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                    borderRadius: BorderRadiusStyle.roundedBorder8,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant.imgClose110,
                                                    height: getSize(7),
                                                    width: getSize(7),
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse50,
                                        height: getSize(74),
                                        width: getSize(74),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(37),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: getMargin(bottom: 15),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          enUs["lbl_wloud_benaibou"]!,
                                          style: CustomTextStyles.labelLargePoppinsBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  enUs["msg_rugby_3_line_center"]!,
                                  style: CustomTextStyles.labelSmallBold8,
                                ),
                                Text(
                                  enUs["lbl_landon"]!,
                                  style: theme.textTheme.labelSmall,
                                ),
                                Padding(
                                  padding: getPadding(top: 3),
                                  child: Text(
                                    enUs["msg_106_relationships"]!,
                                    style: CustomTextStyles.labelSmallMedium,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: getVerticalSize(19),
                                  width: getHorizontalSize(138),
                                  text: enUs["lbl_add"]!,
                                  margin: getMargin(top: 3, bottom: 6),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                  buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // onTapColumnclosesixt();
                            },
                            child: Container(
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: getVerticalSize(142),
                                    width: getHorizontalSize(167),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            height: getVerticalSize(73),
                                            width: getHorizontalSize(167),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant.imgRectangle6643,
                                                  height: getVerticalSize(73),
                                                  width: getHorizontalSize(167),
                                                  radius: BorderRadius.vertical(
                                                    top: Radius.circular(
                                                      getHorizontalSize(10),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: getSize(17),
                                                    width: getSize(17),
                                                    padding: getPadding(all: 5),
                                                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                      borderRadius: BorderRadiusStyle.roundedBorder8,
                                                    ),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant.imgClose110,
                                                      height: getSize(7),
                                                      width: getSize(7),
                                                      alignment: Alignment.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgEllipse51,
                                          height: getSize(74),
                                          width: getSize(74),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(37),
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: getMargin(top: 30),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 59),
                                            child: Text(
                                              enUs["lbl_france2"]!,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(bottom: 22),
                                            child: Text(
                                              enUs["lbl_zinedine"]!,
                                              style: CustomTextStyles.labelLargePoppinsBold,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 47, bottom: 12),
                                            child: Text(
                                              enUs["lbl_soccer_coach"]!,
                                              style: CustomTextStyles.labelSmallBold8,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(
                                      enUs["msg_sod_comman_addmissions"]!,
                                      style: CustomTextStyles.labelSmallMedium,
                                    ),
                                  ),
                                  CustomElevatedButton(
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(138),
                                    text: enUs["lbl_add"]!,
                                    margin: getMargin(top: 4, bottom: 6),
                                    buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                    buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(189),
                    width: getHorizontalSize(354),
                    margin: getMargin(top: 28),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: getVerticalSize(119),
                                  width: getHorizontalSize(167),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: getVerticalSize(73),
                                          width: getHorizontalSize(167),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant.imgRectangle6641,
                                                height: getVerticalSize(73),
                                                width: getHorizontalSize(167),
                                                radius: BorderRadius.vertical(
                                                  top: Radius.circular(
                                                    getHorizontalSize(10),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: getSize(17),
                                                  width: getSize(17),
                                                  padding: getPadding(all: 5),
                                                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                    borderRadius: BorderRadiusStyle.roundedBorder8,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant.imgClose110,
                                                    height: getSize(7),
                                                    width: getSize(7),
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse50,
                                        height: getSize(74),
                                        width: getSize(74),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(37),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: getMargin(bottom: 15),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          enUs["lbl_wloud_benaibou"]!,
                                          style: CustomTextStyles.labelLargePoppinsBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  enUs["msg_rugby_3_line_center"]!,
                                  style: CustomTextStyles.labelSmallBold8,
                                ),
                                Text(
                                  enUs["lbl_landon"]!,
                                  style: theme.textTheme.labelSmall,
                                ),
                                Padding(
                                  padding: getPadding(top: 3),
                                  child: Text(
                                    enUs["msg_106_relationships"]!,
                                    style: CustomTextStyles.labelSmallMedium,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: getVerticalSize(19),
                                  width: getHorizontalSize(138),
                                  text: enUs["lbl_add"]!,
                                  margin: getMargin(top: 3, bottom: 6),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                  buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // onTapColumnclosesixt();
                            },
                            child: Container(
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: getVerticalSize(142),
                                    width: getHorizontalSize(167),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            height: getVerticalSize(73),
                                            width: getHorizontalSize(167),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant.imgRectangle6643,
                                                  height: getVerticalSize(73),
                                                  width: getHorizontalSize(167),
                                                  radius: BorderRadius.vertical(
                                                    top: Radius.circular(
                                                      getHorizontalSize(10),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: getSize(17),
                                                    width: getSize(17),
                                                    padding: getPadding(all: 5),
                                                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                      borderRadius: BorderRadiusStyle.roundedBorder8,
                                                    ),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant.imgClose110,
                                                      height: getSize(7),
                                                      width: getSize(7),
                                                      alignment: Alignment.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgEllipse51,
                                          height: getSize(74),
                                          width: getSize(74),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(37),
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: getMargin(top: 30),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 59),
                                            child: Text(
                                              enUs["lbl_france2"]!,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(bottom: 22),
                                            child: Text(
                                              enUs["lbl_zinedine"]!,
                                              style: CustomTextStyles.labelLargePoppinsBold,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 47, bottom: 12),
                                            child: Text(
                                              enUs["lbl_soccer_coach"]!,
                                              style: CustomTextStyles.labelSmallBold8,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(
                                      enUs["msg_sod_comman_addmissions"]!,
                                      style: CustomTextStyles.labelSmallMedium,
                                    ),
                                  ),
                                  CustomElevatedButton(
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(138),
                                    text: enUs["lbl_add"]!,
                                    margin: getMargin(top: 4, bottom: 6),
                                    buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                    buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(189),
                    width: getHorizontalSize(354),
                    margin: getMargin(top: 28),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: getVerticalSize(119),
                                  width: getHorizontalSize(167),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: getVerticalSize(73),
                                          width: getHorizontalSize(167),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant.imgRectangle6641,
                                                height: getVerticalSize(73),
                                                width: getHorizontalSize(167),
                                                radius: BorderRadius.vertical(
                                                  top: Radius.circular(
                                                    getHorizontalSize(10),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: getSize(17),
                                                  width: getSize(17),
                                                  padding: getPadding(all: 5),
                                                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                    borderRadius: BorderRadiusStyle.roundedBorder8,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant.imgClose110,
                                                    height: getSize(7),
                                                    width: getSize(7),
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse50,
                                        height: getSize(74),
                                        width: getSize(74),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(37),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: getMargin(bottom: 15),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          enUs["lbl_wloud_benaibou"]!,
                                          style: CustomTextStyles.labelLargePoppinsBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  enUs["msg_rugby_3_line_center"]!,
                                  style: CustomTextStyles.labelSmallBold8,
                                ),
                                Text(
                                  enUs["lbl_landon"]!,
                                  style: theme.textTheme.labelSmall,
                                ),
                                Padding(
                                  padding: getPadding(top: 3),
                                  child: Text(
                                    enUs["msg_106_relationships"]!,
                                    style: CustomTextStyles.labelSmallMedium,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: getVerticalSize(19),
                                  width: getHorizontalSize(138),
                                  text: enUs["lbl_add"]!,
                                  margin: getMargin(top: 3, bottom: 6),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                  buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // onTapColumnclosesixt();
                            },
                            child: Container(
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: getVerticalSize(142),
                                    width: getHorizontalSize(167),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            height: getVerticalSize(73),
                                            width: getHorizontalSize(167),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant.imgRectangle6643,
                                                  height: getVerticalSize(73),
                                                  width: getHorizontalSize(167),
                                                  radius: BorderRadius.vertical(
                                                    top: Radius.circular(
                                                      getHorizontalSize(10),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: getSize(17),
                                                    width: getSize(17),
                                                    padding: getPadding(all: 5),
                                                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                                                      borderRadius: BorderRadiusStyle.roundedBorder8,
                                                    ),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant.imgClose110,
                                                      height: getSize(7),
                                                      width: getSize(7),
                                                      alignment: Alignment.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgEllipse51,
                                          height: getSize(74),
                                          width: getSize(74),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(37),
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: getMargin(top: 30),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 59),
                                            child: Text(
                                              enUs["lbl_france2"]!,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(bottom: 22),
                                            child: Text(
                                              enUs["lbl_zinedine"]!,
                                              style: CustomTextStyles.labelLargePoppinsBold,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(left: 47, bottom: 12),
                                            child: Text(
                                              enUs["lbl_soccer_coach"]!,
                                              style: CustomTextStyles.labelSmallBold8,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(
                                      enUs["msg_sod_comman_addmissions"]!,
                                      style: CustomTextStyles.labelSmallMedium,
                                    ),
                                  ),
                                  CustomElevatedButton(
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(138),
                                    text: enUs["lbl_add"]!,
                                    margin: getMargin(top: 4, bottom: 6),
                                    buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                    buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimaryContainer,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 70,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void OnTabProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Player_profile(),
      ),
    );
  }

}
