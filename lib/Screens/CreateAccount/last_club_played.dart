// import 'package:flutter/material.dart';
// import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
//
// import '../../Utils/image_constant.dart';
// import '../../Utils/size_utils.dart';
// import '../../Utils/validation_functions.dart';
// import '../../theme/app_decoration.dart';
// import '../../theme/custom_button_style.dart';
// import '../../theme/custom_text_style.dart';
// import '../../theme/theme_helper.dart';
// import '../../widgets/custom_elevated_button.dart';
// import '../../widgets/custom_image_view.dart';
// import '../../widgets/custom_text_form_field.dart';
//
// class Last_Club_Played extends StatefulWidget {
//   const Last_Club_Played({super.key});
//
//   @override
//   State<Last_Club_Played> createState() => _Last_Club_PlayedState();
// }
//
// class _Last_Club_PlayedState extends State<Last_Club_Played> {
//   @override
//   Widget build(BuildContext context) {
//     return
//       Scaffold(
//           resizeToAvoidBottomInset: false,
//           backgroundColor: theme.colorScheme.primaryContainer,
//           body: Form(
//              // key: _formKey,
//               child: Container(
//                   width: double.maxFinite,
//                   padding: getPadding(left: 17, right: 17),
//                   child: Container(
//                       margin: getMargin(right: 1, bottom: 7),
//                       padding: getPadding(
//                           left: 16, top: 20, right: 16, bottom: 20),
//                       decoration: AppDecoration.outlineBlack.copyWith(
//                           borderRadius: BorderRadiusStyle.roundedBorder8),
//                       child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Align(
//                                 alignment: Alignment.center,
//                                 child: Text(enUs["lbl_information"]!,
//                                     style: theme.textTheme.headlineMedium)),
//                             Container(
//                                 height: getVerticalSize(40),
//                                 width: getHorizontalSize(230),
//                                 margin: getMargin(left: 8, top: 12),
//                                 child: Stack(
//                                     alignment: Alignment.bottomLeft,
//                                     children: [
//                                       Align(
//                                           alignment: Alignment.topRight,
//                                           child: Text(
//                                               enUs[ "msg_last_club_played"]!,
//                                               style: CustomTextStyles
//                                                   .titleMediumPoppinsBlack90001Medium16)),
//                                       Align(
//                                           alignment: Alignment.bottomLeft,
//                                           child: Text(enUs["lbl_club_name"]!,
//                                               style:
//                                               theme.textTheme.titleSmall))
//                                     ])),
//                             CustomTextFormField(
//                               //  controller: controller.nameController,
//                                 margin: getMargin(left: 1, top: 5),
//                                 hintText: enUs["lbl_club_name2"]!,
//                                 hintStyle:
//                                 CustomTextStyles.bodyMediumPoppinsLight,
//                                 validator: (value) {
//                                   if (!isText(value)) {
//                                     return "Please enter valid text";
//                                   }
//                                   return null;
//                                 }),
//                             Padding(
//                                 padding: getPadding(left: 8, top: 13),
//                                 child: Text(enUs["lbl_region"]!,
//                                     style: theme.textTheme.titleSmall)),
//                             CustomTextFormField(
//                               //  controller: controller.cityController,
//                                 margin: getMargin(left: 1, top: 4),
//                                 hintText:enUs[ "lbl_club_city_town"]!,
//                                 hintStyle:
//                                 CustomTextStyles.bodyMediumPoppinsLight),
//                             Padding(
//                                 padding: getPadding(left: 8, top: 14),
//                                 child: Text(enUs["lbl_postion"]!,
//                                     style: theme.textTheme.titleSmall)),
//                             CustomTextFormField(
//                               //  controller: controller.positiononeController,
//                                 margin: getMargin(left: 1, top: 7),
//                                 hintText:enUs[ "msg_your_club_postion"]!,
//                                 hintStyle:
//                                 CustomTextStyles.bodyMediumPoppinsLight),
//                             Padding(
//                                 padding: getPadding(left: 8, top: 23),
//                                 child: Text(enUs["lbl_from"]!,
//                                     style: CustomTextStyles
//                                         .titleSmallInterSemiBold)),
//                             Padding(
//                                 padding: getPadding(top: 6),
//                                 child: Row(children: [
//                                   CustomTextFormField(
//                                       width: getHorizontalSize(83),
//                                       // controller:
//                                       // controller.fromvalueoneController,
//                                       hintText:enUs[ "lbl_12"]!,
//                                       hintStyle: CustomTextStyles
//                                           .titleSmallInterSemiBold,
//                                       suffix: Container(
//                                           margin: getMargin(
//                                               left: 15,
//                                               top: 15,
//                                               right: 13,
//                                               bottom: 12),
//                                           child: CustomImageView(
//                                               svgPath:
//                                               ImageConstant.imgFrame)),
//                                       suffixConstraints: BoxConstraints(
//                                           maxHeight: getVerticalSize(35)),
//                                       contentPadding: getPadding(
//                                           left: 26, top: 9, bottom: 9),
//                                       borderDecoration:
//                                       TextFormFieldStyleHelper.fillGray),
//                                   CustomDropDown(
//                                       width: getHorizontalSize(106),
//                                       icon: Container(
//                                           margin:
//                                           getMargin(left: 15, right: 19),
//                                           child: CustomImageView(
//                                               svgPath:
//                                               ImageConstant.imgFrame)),
//                                       margin: getMargin(left: 19),
//                                       hintText: "lbl_jun".tr,
//                                       hintStyle: CustomTextStyles
//                                           .titleSmallInterSemiBold,
//                                       items: controller
//                                           .acountCreateThreeModelObj
//                                           .value
//                                           .dropdownItemList
//                                           .value,
//                                       borderDecoration:
//                                       DropDownStyleHelper.fillGray,
//                                       onChanged: (value) {
//                                         controller.onSelected(value);
//                                       }),
//                                   CustomTextFormField(
//                                       width: getHorizontalSize(105),
//                                      // controller:
//                                      // controller.zipcodeController,
//                                       margin: getMargin(left: 11),
//                                       hintText:enUs[ "lbl_2023"]!,
//                                       hintStyle: CustomTextStyles
//                                           .titleSmallInterSemiBold,
//                                       suffix: Container(
//                                           margin: getMargin(
//                                               left: 15,
//                                               top: 15,
//                                               right: 14,
//                                               bottom: 12),
//                                           child: CustomImageView(
//                                               svgPath:
//                                               ImageConstant.imgFrame)),
//                                       suffixConstraints: BoxConstraints(
//                                           maxHeight: getVerticalSize(35)),
//                                       contentPadding: getPadding(
//                                           left: 27, top: 9, bottom: 9),
//                                       borderDecoration:
//                                       TextFormFieldStyleHelper.fillGray)
//                                 ])),
//                             Padding(
//                                 padding: getPadding(left: 8, top: 31),
//                                 child: Text(enUs["lbl_to"]!,
//                                     style: CustomTextStyles
//                                         .titleSmallInterSemiBold)),
//                             Padding(
//                                 padding: getPadding(top: 6),
//                                 child: Row(children: [
//                                   CustomDropDown(
//                                       width: getHorizontalSize(83),
//                                       icon: Container(
//                                           margin:
//                                           getMargin(left: 15, right: 13),
//                                           child: CustomImageView(
//                                               svgPath:
//                                               ImageConstant.imgFrame)),
//                                       hintText: "lbl_12".tr,
//                                       hintStyle: CustomTextStyles
//                                           .titleSmallInterSemiBold,
//                                       items: controller
//                                           .acountCreateThreeModelObj
//                                           .value
//                                           .dropdownItemList1
//                                           .value,
//                                       borderDecoration:
//                                       DropDownStyleHelper.fillGray,
//                                       onChanged: (value) {
//                                         controller.onSelected1(value);
//                                       }),
//                                   CustomTextFormField(
//                                       width: getHorizontalSize(106),
//                                       // controller:
//                                       // controller.nextvalueoneController,
//                                       margin: getMargin(left: 19),
//                                       hintText:enUs[ "lbl_jun"]!,
//                                       hintStyle: CustomTextStyles
//                                           .titleSmallInterSemiBold,
//                                       suffix: Container(
//                                           margin: getMargin(
//                                               left: 15,
//                                               top: 16,
//                                               right: 19,
//                                               bottom: 11),
//                                           child: CustomImageView(
//                                               svgPath:
//                                               ImageConstant.imgFrame)),
//                                       suffixConstraints: BoxConstraints(
//                                           maxHeight: getVerticalSize(35)),
//                                       contentPadding: getPadding(
//                                           left: 30, top: 9, bottom: 9),
//                                       borderDecoration:
//                                       TextFormFieldStyleHelper.fillGray),
//                                   CustomTextFormField(
//                                       width: getHorizontalSize(105),
//
//                                       margin: getMargin(left: 11),
//                                       hintText: enUs["lbl_2023"]!,
//                                       hintStyle: CustomTextStyles
//                                           .titleSmallInterSemiBold,
//                                       textInputAction: TextInputAction.done,
//                                       suffix: Container(
//                                           margin: getMargin(
//                                               left: 15,
//                                               top: 15,
//                                               right: 14,
//                                               bottom: 12),
//                                           child: CustomImageView(
//                                               svgPath:
//                                               ImageConstant.imgFrame)),
//                                       suffixConstraints: BoxConstraints(
//                                           maxHeight: getVerticalSize(35)),
//                                       contentPadding: getPadding(
//                                           left: 27, top: 9, bottom: 9),
//                                       borderDecoration:
//                                       TextFormFieldStyleHelper.fillGray)
//                                 ])),
//                             CustomElevatedButton(
//                                 width: getHorizontalSize(96),
//                                 text: enUs["lbl_next"]!,
//                                 margin: getMargin(top: 75, bottom: 32),
//                                 buttonStyle:
//                                 CustomButtonStyles.fillPrimaryTL18,
//                                 buttonTextStyle: CustomTextStyles
//                                     .titleSmallPrimaryContainer,
//                                 onTap: () {
//                                   onTapNext();
//                                 },
//                                 alignment: Alignment.centerRight)
//                           ])))));
//   }
//
//   void onTapNext() {}
// }

import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../Utils/validation_functions.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'Information_peroformance.dart';

class LastClubPlayed extends StatefulWidget {
  const LastClubPlayed({Key? key});

  @override
  _LastClubPlayedState createState() => _LastClubPlayedState();
}

class _LastClubPlayedState extends State<LastClubPlayed> {
  String? selectedPosition;  // Added to store the selected position value
  TextEditingController _dateController = TextEditingController();
  //DateTime selectedDate = DateTime.now();
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.primaryContainer,
      body: Container(
        height: 800,
        margin: getMargin(right: 1, bottom: 7),
        padding: getPadding(
          left: 16,
          top: 20,
          right: 16,
          bottom: 20,
        ),
        // decoration: AppDecoration.outlineBlack.copyWith(
        //   borderRadius: BorderRadiusStyle.roundedBorder8,
        // ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                enUs["lbl_information"]!,
                style: theme.textTheme.headlineMedium,
              ),
            ),
            Container(
              height: getVerticalSize(50),
              width: getHorizontalSize(230),
              margin: getMargin(left: 8, top: 12),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      enUs["msg_last_club_played"]!,
                      style: CustomTextStyles.titleMediumPoppinsBlack90001Medium16,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      enUs["lbl_club_name"]!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            CustomTextFormField(
              margin: getMargin(left: 1, top: 5),
              hintText: enUs["lbl_club_name2"]!,
              autofocus: false,
              contentPadding: EdgeInsets.all(15),

              hintStyle: CustomTextStyles.bodyMediumPoppinsLight,
              validator: (value) {
                if (!isText(value)) {
                  return "Please enter valid text";
                }
                return null;
              },
            ),
            Padding(
              padding: getPadding(left: 8, top: 13),
              child: Text(
                enUs["lbl_region"]!,
                style: theme.textTheme.titleSmall,
              ),
            ),
            CustomTextFormField(
              margin: getMargin(left: 1, top: 4),
              hintText: enUs["lbl_club_city_town"]!,
              contentPadding: EdgeInsets.all(15),
              autofocus: false,
              hintStyle: CustomTextStyles.bodyMediumPoppinsLight,
            ),
            Padding(
              padding: getPadding(left: 8, top: 14),
              child: Text(
                enUs["lbl_postion"]!,
                style: theme.textTheme.titleSmall,
              ),
            ),
            DropdownButton<String>(
              isExpanded: true,
              value: selectedPosition, // Replace with your selected value variable
              items: [
                "Position 1",
                "Position 2",
                "Position 3",
                // Add your position options here
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) { // Change the parameter type to String?
                setState(() {
                  selectedPosition = newValue ?? ""; // Update the selected value (use empty string if null)
                });
              },
            ),
            //
            Padding(
              padding: getPadding(left: 8, top: 23),
              child: Text(
                enUs["lbl_from"]!,
                style: CustomTextStyles.titleSmallInterSemiBold,
              ),
            ),
            Padding(
              padding: getPadding(top: 6),
              child: Row(
                children: [
                  CustomTextFormField(
                    width: getHorizontalSize(83),
                    hintText: enUs["lbl_12"]!,

                    autofocus: false,
                    hintStyle: CustomTextStyles.titleSmallInterSemiBold,
                    suffix: Container(
                      margin: getMargin(left: 15, top: 15, right: 13, bottom: 12),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFrame,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(35)),
                    contentPadding: EdgeInsets.all(15),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                  ),
                  SizedBox(width: 10,),
                  CustomTextFormField(
                    width: getHorizontalSize(105),
                    autofocus: false,
                    hintText: enUs["lbl_2023"]!,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: CustomTextStyles.titleSmallInterSemiBold,
                    suffix: Container(
                      margin: getMargin(left: 15, top: 15, right: 14, bottom: 12),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFrame,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(35)),

                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                  ),
                  SizedBox(width: 10,),
                  CustomTextFormField(
                    width: getHorizontalSize(105),
                    autofocus: false,
                    hintText: enUs["lbl_2023"]!,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: CustomTextStyles.titleSmallInterSemiBold,
                    suffix: Container(
                      margin: getMargin(left: 15, top: 15, right: 14, bottom: 12),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFrame,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(35)),

                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(left: 8, top: 31),
              child: Text(
                enUs["lbl_to"]!,
                style: CustomTextStyles.titleSmallInterSemiBold,
              ),
            ),
            Padding(
              padding: getPadding(top: 6),
              child: Row(
                children: [
                  CustomTextFormField(
                    width: getHorizontalSize(83),
                    hintText: enUs["lbl_12"]!,

                    autofocus: false,
                    hintStyle: CustomTextStyles.titleSmallInterSemiBold,
                    suffix: Container(
                      margin: getMargin(left: 15, top: 15, right: 13, bottom: 12),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFrame,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(35)),
                    contentPadding: EdgeInsets.all(15),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                  ),
                  SizedBox(width: 10,),
                  CustomTextFormField(
                    width: getHorizontalSize(105),
                    autofocus: false,
                    hintText: enUs["lbl_2023"]!,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: CustomTextStyles.titleSmallInterSemiBold,
                    suffix: Container(
                      margin: getMargin(left: 15, top: 15, right: 14, bottom: 12),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFrame,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(35)),

                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                  ),
                  SizedBox(width: 10,),
                  CustomTextFormField(
                    width: getHorizontalSize(105),
                    autofocus: false,
                    hintText: enUs["lbl_2023"]!,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: CustomTextStyles.titleSmallInterSemiBold,
                    suffix: Container(
                      margin: getMargin(left: 15, top: 15, right: 14, bottom: 12),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFrame,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(35)),

                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              width: getHorizontalSize(96),
              height: getVerticalSize(40),
              text: enUs["lbl_next"]!,
              margin: getMargin(top: 75, bottom: 32,right: 10),
              buttonStyle: CustomButtonStyles.fillPrimaryTL18,
              buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
              onTap: () {
                onTapNext();
              },
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }

  void onTapNext() {
    // Navigate to the next screen or perform the desired action here.
     Navigator.push(context, MaterialPageRoute(builder: (context) => Informatio_performance()));
  }
}



