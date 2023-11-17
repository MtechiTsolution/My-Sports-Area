import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../Utils/image_constant.dart';
import '../Utils/size_utils.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../widgets/app_bar/appbar_image_1.dart';
import '../widgets/app_bar/appbar_image_2.dart';
import '../widgets/app_bar/appbar_subtitle_4.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/edit_player_profile.dart';
import 'Relationship/relationship.dart';
import 'Setting/setting.dart';

class Player_profile extends StatefulWidget {
  const Player_profile({super.key});

  @override
  State<Player_profile> createState() => _Player_profileState();
}

class _Player_profileState extends State<Player_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: CustomAppBar(
        leadingWidth: getHorizontalSize(44),
        leading: AppbarImage1(
          onTap: () {
            Navigator.pop(context);
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => RelationshipScreen(), // Replace 'ProfileScreen' with your actual profile screen widget
            //   ),
            // );
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>RelationshipScreen()));
          },
          imagePath: ImageConstant.imgArrowsmallright38x38,
          margin: getMargin(
            left: 6,
            top: 10,
          ),
        ),
        centerTitle: true,
        title: AppbarSubtitle4(
          text: enUs["lbl_dadi_benabbou"]!,
          margin: getMargin(
            top: 10,
            bottom: 14,
          ),
        ),
        actions: [
          AppbarImage2(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
            },
            imagePath: ImageConstant.imgSetting1,
            margin: getMargin(
              left: 13,
              top: 10,
              right: 13,
              bottom: 7,
            ),
          ),
        ],
        styleType: Style.bgShadow,
      ),
      body: SizedBox(
        width: mediaQueryData.size.width,
        child: SingleChildScrollView(
          padding: getPadding(
            top: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(224),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle65582,
                      height: getVerticalSize(160),
                      width: getHorizontalSize(393),
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: getPadding(
                          right: 13,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(bottom: 1, left: 5),
                                    child: Text(
                                      enUs["lbl_jarry2"]!,
                                      style: CustomTextStyles.titleSmallInter,
                                    ),
                                  ),
                                  CustomImageView(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_player_profile()));
                                    },
                                    imagePath: ImageConstant.imgPen1,
                                    height: getSize(15),
                                    width: getSize(15),
                                    margin: getMargin(
                                      top: 3,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  enUs["lbl_age_33_years"]!,
                                  style: CustomTextStyles.bodySmallInter9,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 6,
                                ),
                                child: Text(
                                  enUs["msg_old_380_salon_de"]!,
                                  style: CustomTextStyles.labelSmallInterMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: getSize(94),
                        width: getSize(94),
                        margin: getMargin(
                          left: 26,
                          bottom: 9,
                        ),
                        decoration: AppDecoration.outlineBlack900012,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle655994x94,
                              height: getSize(94),
                              width: getSize(94),
                              radius: BorderRadius.circular(
                                getHorizontalSize(47),
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomIconButton(
                              height: getSize(21),
                              width: getSize(21),
                              margin: getMargin(
                                right: 7,
                                bottom: 2,
                              ),
                              padding: getPadding(
                                all: 4,
                              ),
                              decoration: IconButtonStyleHelper.fillBlack,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup44,
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
                  top: 14,
                ),
                child: Divider(
                  color: appTheme.black90001,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // First column
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgScore1,
                        height: getSize(25),
                        width: getSize(25),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(5)),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: enUs["lbl_soccer"]!,
                                style: CustomTextStyles.labelLargeBold.copyWith(
                                  height: getVerticalSize(1),
                                ),
                              ),
                              TextSpan(
                                text: enUs["lbl_522"]!,
                                style: CustomTextStyles.bodySmallInter12,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),

                  // Second column
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCity1,
                        height: getSize(21),
                        width: getSize(21),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(5)),
                        child: Text(
                          enUs["lbl_city_lahore"]!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelLargeBold_1.copyWith(
                            height: getVerticalSize(1.67),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Third column
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgDiagram1,
                        height: getSize(25),
                        width: getSize(25),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(5)),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: enUs["lbl_department"]!,
                                style: CustomTextStyles.labelLargeBold.copyWith(
                                  height: getVerticalSize(1.67),
                                ),
                              ),
                              TextSpan(
                                text: enUs["lbl_football"]!,
                                style: CustomTextStyles.bodySmallInter12,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),

                  // Fourth column
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPin1,
                        height: getSize(23),
                        width: getSize(23),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(5)),
                        child: Text(
                          enUs["lbl_region_india"]!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelLargeBold_1.copyWith(
                            height: getVerticalSize(1.67),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Divider(
                  color: appTheme.black90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  top: 5,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFootball1,
                      height: getSize(16),
                      width: getSize(16),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: enUs["lbl_fandian"]!,
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                            TextSpan(
                              text: enUs["lbl_player"]!,
                              style: CustomTextStyles.labelLargeBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  top: 12,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRanking1,
                            height: getSize(13),
                            width: getSize(13),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCategories3,
                            height: getSize(15),
                            width: getSize(15),
                            margin: getMargin(
                              top: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(107),
                      margin: getMargin(
                        left: 14,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: enUs["lbl_postion2"]!,
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                            TextSpan(
                              text: enUs["lbl_forword2"]!,
                              style: CustomTextStyles.labelLargeBold,
                            ),
                            TextSpan(
                              text: " \n",
                              style:
                                  CustomTextStyles.labelLargePrimaryContainer,
                            ),
                            TextSpan(
                              text: enUs["lbl_category"]!,
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                            TextSpan(
                              text: enUs["lbl_jonior"]!,
                              style: CustomTextStyles.labelLargeBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Divider(
                  color: appTheme.black90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 6,
                ),
                child: Text(
                  enUs["lbl_comment"]!,
                  style: CustomTextStyles.labelLargeBold_1,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(351),
                  margin: getMargin(
                    left: 16,
                    top: 10,
                    right: 25,
                  ),
                  child: Text(
                    enUs["msg_apies_ava_performed2"]!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Divider(
                  color: appTheme.black90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 11,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgDataprocessing,
                      height: getSize(18),
                      width: getSize(18),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        enUs["msg_experience_course"]!,
                        style: CustomTextStyles.titleSmallInter_1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 6,
                ),
                child: Text(
                  enUs["msg_do_13_2023_dunkirk"]!,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 6,
                ),
                child: Text(
                  enUs["lbl_m_2021_sbf"]!,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 8,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTrophy1,
                      height: getSize(18),
                      width: getSize(18),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        enUs["lbl_trophies"]!,
                        style: CustomTextStyles.titleSmallInter_1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(198),
                margin: getMargin(
                  left: 16,
                  top: 7,
                ),
                child: Text(
                  enUs["msg_champion_india_2020"]!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.67,
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(34),
                width: double.maxFinite,
                margin: getMargin(
                  top: 5,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                            color: appTheme.black90001,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 16,
                          bottom: 2,
                        ),
                        child: Text(
                          enUs["msg_activity_or_publication"]!,
                          style: CustomTextStyles.labelLargeBold_1,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                    top: 16,
                    right: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: getSize(26),
                        width: getSize(26),
                        padding: getPadding(
                          all: 5,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup116,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          top: 4,
                          bottom: 4,
                        ),
                        child: Text(
                          enUs["lbl_alnassr"]!,
                          style: CustomTextStyles.titleSmallInter,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgSignal,
                        height: getVerticalSize(6),
                        width: getHorizontalSize(22),
                        margin: getMargin(
                          top: 10,
                          bottom: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(311),
                margin: getMargin(
                  left: 26,
                  top: 16,
                  right: 55,
                ),
                child: Text(
                  enUs["msg_lorem_ipsum_dolor2"]!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallInter9,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle6555262x392,
                height: getVerticalSize(262),
                width: getHorizontalSize(392),
                margin: getMargin(
                  left: 1,
                  top: 20,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 37,
                    top: 18,
                    right: 41,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsup1,
                        height: getSize(23),
                        width: getSize(23),
                      ),
                      Spacer(
                        flex: 51,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCommentdots1,
                        height: getSize(23),
                        width: getSize(23),
                      ),
                      Spacer(
                        flex: 48,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSharesquare4,
                        height: getSize(25),
                        width: getSize(25),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                    top: 41,
                    right: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                        height: getSize(26),
                        width: getSize(26),
                        padding: getPadding(
                          all: 5,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup116,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          top: 4,
                          bottom: 5,
                        ),
                        child: Text(
                          enUs["lbl_alnassr"]!,
                          style: CustomTextStyles.titleSmallInter,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgSignal,
                        height: getVerticalSize(6),
                        width: getHorizontalSize(22),
                        margin: getMargin(
                          top: 12,
                          bottom: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(338),
                  margin: getMargin(
                    left: 26,
                    top: 6,
                    right: 29,
                  ),
                  child: Text(
                    enUs["msg_lorem_ipsum_dolor2"]!,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallInter9,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle6556280x392,
                height: getVerticalSize(280),
                width: getHorizontalSize(392),
                margin: getMargin(
                  left: 1,
                  top: 7,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 37,
                    top: 14,
                    right: 41,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsup1,
                        height: getSize(23),
                        width: getSize(23),
                      ),
                      Spacer(
                        flex: 51,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCommentdots1,
                        height: getSize(23),
                        width: getSize(23),
                      ),
                      Spacer(
                        flex: 48,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSharesquare4,
                        height: getSize(25),
                        width: getSize(25),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                    top: 47,
                    right: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                        height: getSize(26),
                        width: getSize(26),
                        padding: getPadding(
                          all: 5,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup116,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          top: 4,
                          bottom: 5,
                        ),
                        child: Text(
                          enUs["lbl_alnassr"]!,
                          style: CustomTextStyles.titleSmallInter,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgSignal,
                        height: getVerticalSize(6),
                        width: getHorizontalSize(22),
                        margin: getMargin(
                          top: 13,
                          bottom: 7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(338),
                  margin: getMargin(
                    left: 26,
                    top: 5,
                    right: 29,
                  ),
                  child: Text(
                    enUs["msg_lorem_ipsum_dolor2"]!,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallInter9,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle6557278x392,
                height: getVerticalSize(278),
                width: getHorizontalSize(392),
                margin: getMargin(
                  left: 1,
                  top: 10,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 37,
                    top: 16,
                    right: 41,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsup1,
                        height: getSize(23),
                        width: getSize(23),
                      ),
                      Spacer(
                        flex: 51,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCommentdots1,
                        height: getSize(23),
                        width: getSize(23),
                      ),
                      Spacer(
                        flex: 48,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSharesquare4,
                        height: getSize(25),
                        width: getSize(25),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
