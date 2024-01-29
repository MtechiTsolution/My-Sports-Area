// import 'package:flutter/material.dart';
// import 'package:my_sports_app/Screens/CreateAccount/widgets/Customdropdown.dart';
// import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
//
// import '../../Utils/image_constant.dart';
// import '../../Utils/size_utils.dart';
// import '../../theme/app_decoration.dart';
// import '../../theme/custom_button_style.dart';
// import '../../theme/custom_text_style.dart';
// import '../../theme/theme_helper.dart';
// import '../../widgets/custom_elevated_button.dart';
// import '../../widgets/custom_image_view.dart';
//
//
// class Sports_Category_info extends StatefulWidget {
//   const Sports_Category_info({super.key});
//
//   @override
//   State<Sports_Category_info> createState() => _Sports_Category_infoState();
// }
//
// class _Sports_Category_infoState extends State<Sports_Category_info> {
//   TextEditingController customDropDownController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       SafeArea(
//           child: Scaffold(
//               backgroundColor: theme.colorScheme.primaryContainer,
//               body: Container(
//                   width: double.maxFinite,
//                   padding: getPadding(left: 17, right: 17),
//                   child: Container(
//                       margin: getMargin(right: 1, bottom: 7),
//                       padding:
//                       getPadding(left: 15, top: 20, right: 15, bottom: 20),
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
//                             Padding(
//                                 padding: getPadding(left: 12, top: 84),
//                                 child: Text(enUs["lbl_sporte_category"]!,
//                                     style: CustomTextStyles
//                                         .titleSmallInterSemiBold)),
//
//
//                             CustomDropDown(
//                               icon: Container(
//                                 margin: getMargin(left: 30, right: 14),
//                                 child: CustomImageView(
//                                   svgPath: ImageConstant.imgFrame,
//                                 ),
//                               ),
//                               margin: getMargin(left: 3, top: 8),
//                               hintText: "msg_regional_or_national".tr,
//                               hintStyle: CustomTextStyles.bodyMediumPoppinsLight,
//                               items: controller.acountCreateFiveModelObj.value.dropdownItemList.value,
//                               onChanged: (value) {
//                                 customDropDownController.text = value ?? "";
//                                 // Handle your logic here when the dropdown value changes
//                               },
//                               controller: customDropDownController, // Pass the controller to the CustomDropDown
//                             ),
//
//
//
//                             Padding(
//                                 padding: getPadding(left: 12, top: 15),
//                                 child: Text(enUs["lbl_selections"]!,
//                                     style: CustomTextStyles
//                                         .titleSmallInterSemiBold)),
//                             CustomDropDown(
//                                 icon: Container(
//                                     margin: getMargin(left: 30, right: 13),
//                                     child: CustomImageView(
//                                         svgPath: ImageConstant.imgFrame)),
//                                 margin: getMargin(left: 3, top: 8),
//                                 hintText: "msg_sports_selection".tr,
//                                 hintStyle:
//                                 CustomTextStyles.bodyMediumPoppinsLight,
//                                 items: controller.acountCreateFiveModelObj.value
//                                     .dropdownItemList1.value,
//                                 onChanged: (value) {
//                                   controller.onSelected1(value);
//                                 }),
//                             Padding(
//                                 padding: getPadding(left: 12, top: 14),
//                                 child: Text(enUs["lbl_interests"]!,
//                                     style: CustomTextStyles
//                                         .titleSmallInterSemiBold)),
//                             CustomDropDown(
//                                 icon: Container(
//                                     margin: getMargin(left: 30, right: 13),
//                                     child: CustomImageView(
//                                         svgPath: ImageConstant.imgFrame)),
//                                 margin: getMargin(left: 3, top: 7),
//                                 hintText: "msg_select_interest".tr,
//                                 hintStyle:
//                                 CustomTextStyles.bodyMediumPoppinsLight,
//                                 items: controller.acountCreateFiveModelObj.value
//                                     .dropdownItemList2.value,
//                                 onChanged: (value) {
//                                   controller.onSelected2(value);
//                                 }),
//                             Padding(
//                                 padding: getPadding(left: 12, top: 15),
//                                 child: Text(enUs["lbl_appointment"]!,
//                                     style: CustomTextStyles
//                                         .titleSmallInterSemiBold)),
//                             CustomDropDown(
//                                 icon: Container(
//                                     margin: getMargin(left: 30, right: 13),
//                                     child: CustomImageView(
//                                         svgPath: ImageConstant.imgFrame)),
//                                 margin: getMargin(left: 3, top: 5),
//                                 hintText: "msg_select_appointment".tr,
//                                 hintStyle:
//                                 CustomTextStyles.bodyMediumPoppinsLight,
//                                 items: controller.acountCreateFiveModelObj.value
//                                     .dropdownItemList3.value,
//                                 onChanged: (value) {
//                                   controller.onSelected3(value);
//                                 }),
//                             Spacer(),
//                             CustomElevatedButton(
//                                 width: getHorizontalSize(96),
//                                 text: enUs["lbl_next"]!,
//                                 margin: getMargin(bottom: 32),
//                                 buttonStyle: CustomButtonStyles.fillPrimaryTL18,
//                                 buttonTextStyle:
//                                 CustomTextStyles.titleSmallPrimaryContainer,
//                                 onTap: () {
//                                   onTapNext();
//                                 },
//                                 alignment: Alignment.centerRight)
//                           ])))));
//   }
//
//   void onTapNext() {}
// }
//
//
//
//
//

import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/CreateProfile/widgets/Customdropdown.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import 'Secuerty_question.dart';

// Define a custom controller class
class MyController {
  final ValueNotifier<String> dropdownItemList =
      ValueNotifier<String>("Football");
  final ValueNotifier<String> dropdownItemList1 =
      ValueNotifier<String>("Cricket");
  final ValueNotifier<String> dropdownItemList2 =
      ValueNotifier<String>("Baskit ball");
  final ValueNotifier<String> dropdownItemList3 =
      ValueNotifier<String>("Hockey");

// Add other properties and methods as needed
}

class Sports_Category_info extends StatefulWidget {
  const Sports_Category_info({super.key});

  @override
  State<Sports_Category_info> createState() => _Sports_Category_infoState();
}

class _Sports_Category_infoState extends State<Sports_Category_info> {
  // Create an instance of the custom controller
  MyController myController = MyController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 17, right: 17),
          child: Container(
            margin: getMargin(
                right: 1,
                bottom: MediaQuery.of(context).size.height * 0.2,
                top: MediaQuery.of(context).size.height * 0.1),
            padding: getPadding(left: 15, top: 20, right: 15, bottom: 20),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(enUs["lbl_information"]!,
                        style: theme.textTheme.headlineMedium),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(enUs["lbl_sporte_category"]!,
                      style: CustomTextStyles.titleSmallInterSemiBold),
                ),
                CustomDropDown(
                  margin: getMargin(left: 3, top: 5),
                  hintText: enUs["msg_select_appointment"]!,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsLight,
                  items: [
                    myController.dropdownItemList3.value
                  ], // Wrap in a list
                  onChanged: (value) {
                    myController.dropdownItemList3.value = value ?? "";
                    // Handle your logic here when the dropdown value changes
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(enUs["lbl_selections"]!,
                      style: CustomTextStyles.titleSmallInterSemiBold),
                ),
                CustomDropDown(
                  // icon: Container(
                  //   margin: getMargin(left: 30, right: 13),
                  //   child: CustomImageView(
                  //     svgPath: ImageConstant.imgFrame,
                  //   ),
                  // ),
                  margin: getMargin(left: 3, top: 5),
                  hintText: enUs["msg_select_appointment"]!,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsLight,
                  items: [
                    myController.dropdownItemList3.value
                  ], // Wrap in a list
                  onChanged: (value) {
                    myController.dropdownItemList3.value = value ?? "";
                    // Handle your logic here when the dropdown value changes
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(enUs["lbl_interests"]!,
                      style: CustomTextStyles.titleSmallInterSemiBold),
                ),
                CustomDropDown(
                  margin: getMargin(left: 3, top: 5),
                  hintText: enUs["msg_select_appointment"]!,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsLight,
                  items: [
                    myController.dropdownItemList3.value
                  ], // Wrap in a list
                  onChanged: (value) {
                    myController.dropdownItemList3.value = value ?? "";
                    // Handle your logic here when the dropdown value changes
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(enUs["lbl_appointment"]!,
                      style: CustomTextStyles.titleSmallInterSemiBold),
                ),
                CustomDropDown(
                  // icon: Container(
                  //   margin: getMargin(left: 30, right: 13),
                  //   child: CustomImageView(
                  //     svgPath: ImageConstant.imgFrame,
                  //   ),
                  // ),
                  margin: getMargin(left: 3, top: 5),
                  hintText: enUs["msg_select_appointment"]!,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsLight,
                  items: [
                    myController.dropdownItemList3.value
                  ], // Wrap in a list
                  onChanged: (value) {
                    myController.dropdownItemList3.value = value ?? "";
                    // Handle your logic here when the dropdown value changes
                  },
                ),
                Spacer(),
                CustomElevatedButton(
                  width: getHorizontalSize(96),
                  text: enUs["lbl_next"]!,
                  margin: getMargin(bottom: 32),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                  buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
                  onTap: () {
                    onTapNext();
                  },
                  alignment: Alignment.centerRight,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapNext() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SecurityQuestionScreen()));
  }
}
