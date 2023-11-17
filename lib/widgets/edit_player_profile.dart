import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../Utils/image_constant.dart';
import '../Utils/size_utils.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import 'app_bar/appbar_image_1.dart';
import 'app_bar/appbar_subtitle_4.dart';
import 'app_bar/custom_app_bar.dart';
import 'custom_icon_button.dart';
import 'custom_image_view.dart';
import 'custom_text_form_field.dart';

class Edit_player_profile extends StatefulWidget {
  const Edit_player_profile({super.key});

  @override
  State<Edit_player_profile> createState() => _Edit_player_profileState();
}

class _Edit_player_profileState extends State<Edit_player_profile> {

  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.primaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(57),
                leading: AppbarImage1(
                    imagePath: ImageConstant.imgArrowsmallright,
                    margin: getMargin(left: 21, top: 10, bottom: 4),
                    onTap: () {
                    //  onTapArrowsmallright();
                    }),
                centerTitle: true,
                title: AppbarSubtitle4(
                    text:enUs[ "lbl_dadi_benabbou"]!,
                    margin: getMargin(top: 10, bottom: 14)),
                styleType: Style.bgShadow),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, right: 17),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 1, top: 13),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(117),
                                        width: getHorizontalSize(116),
                                        margin: getMargin(top: 15),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle28,
                                                  height: getVerticalSize(120),
                                                  width: getHorizontalSize(116),
                                                  alignment: Alignment.center),
                                              CustomIconButton(
                                                  height: getSize(21),
                                                  width: getSize(21),
                                                  margin: getMargin(
                                                      right: 12, bottom: 4),
                                                  padding: getPadding(all: 4),
                                                  decoration:
                                                  IconButtonStyleHelper
                                                      .fillBlack,
                                                  alignment:
                                                  Alignment.bottomRight,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup44))
                                            ]))),
                                Padding(
                                    padding:
                                    getPadding(left: 7, top: 18, right: 58),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(enUs["lbl_name"]!,
                                              style:
                                              theme.textTheme.titleSmall),
                                          Text(enUs["lbl_last_name2"]!,
                                              style: theme.textTheme.titleSmall)
                                        ])),
                                Container(
                                    height: getVerticalSize(35),
                                    width: getHorizontalSize(323),
                                    margin: getMargin(top: 4),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomTextFormField(
                                              width: getHorizontalSize(155),
                                              hintText:"Enter first name",
                                              alignment: Alignment.centerLeft),
                                          CustomTextFormField(
                                              width: getHorizontalSize(155),
                                              hintText: "Enter last name",
                                              alignment: Alignment.centerRight),

                                        ])),
                                Padding(
                                    padding: getPadding(left: 8, top: 30),
                                    child: Text(enUs["lbl_date_of_birth"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomTextFormField(

                                    margin: getMargin(left: 1, top: 1),
                                    hintText: enUs["lbl_date_of_birth2"]!,
                                    hintStyle: theme.textTheme.bodyMedium!,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 6,
                                            right: 4,
                                            bottom: 6),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgCalendarsilhouette1,
                                            height: getSize(23),
                                            width: getSize(23))),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(35)),
                                    contentPadding: getPadding(
                                        left: 19, top: 9, bottom: 9)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child:

                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: 8.0),
                                              child: ToggleButtons(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0,right: 20,top: 5,bottom: 5),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 16,
                                                          width: 16,

                                                          margin: EdgeInsets.only(right: 8),
                                                          decoration: BoxDecoration(
                                                            color: isMaleSelected ? Colors.pink : Colors.white,
                                                            shape: BoxShape.circle,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Male',
                                                          style: TextStyle(
                                                            color: isMaleSelected ? Colors.pink : Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                                isSelected: [isMaleSelected],
                                                onPressed: (index) {
                                                  setState(() {
                                                    if (index == 0) {
                                                      isMaleSelected = !isMaleSelected;
                                                      isFemaleSelected = false;
                                                    }
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: ToggleButtons(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 16,
                                                          width: 16,
                                                          margin: EdgeInsets.only(right: 8),
                                                          decoration: BoxDecoration(
                                                            color: isFemaleSelected ? Colors.pink : Colors.white,
                                                            shape: BoxShape.circle,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Female',
                                                          style: TextStyle(
                                                            color: isFemaleSelected ? Colors.pink : Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                                isSelected: [isFemaleSelected],
                                                onPressed: (index) {
                                                  setState(() {
                                                    if (index == 0) {
                                                      isFemaleSelected = !isFemaleSelected;
                                                      isMaleSelected = false;
                                                    }
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),
                                ),

                                Padding(
                                    padding: getPadding(left: 8, top: 18),
                                    child: Text(enUs["lbl_city2"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomTextFormField(
                                   // controller: controller.cityController,
                                    margin: getMargin(left: 1, top: 4),
                                    hintText: enUs["lbl_delhi"]!,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumPoppinsLight),
                                Padding(
                                    padding: getPadding(left: 8, top: 18),
                                    child: Text(enUs["lbl_club_name"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomTextFormField(
                                  autofocus: false,
                                    //controller: controller.nameController2,
                                    margin: getMargin(left: 1, top: 5),
                                    hintText:enUs[ "lbl_soccer2"]!,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumPoppinsLight),
                                Padding(
                                    padding: getPadding(left: 8, top: 13),
                                    child: Text(enUs["lbl_region"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomTextFormField(
                                  //  controller: controller.countryController,
                                    margin: getMargin(left: 1, top: 4),
                                    hintText: enUs["lbl_france2"]!,
                                    hintStyle:
                                    CustomTextStyles.bodyMediumPoppinsLight,
                                    textInputAction: TextInputAction.done)
                              ])),

                    ])),


        ));
  }
}


