import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../Utils/validation_functions.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';

class TabPerformance extends StatefulWidget {
  const TabPerformance({super.key});

  @override
  State<TabPerformance> createState() => _TabPerformanceState();
}

class _TabPerformanceState extends State<TabPerformance> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: theme.colorScheme.primaryContainer,
              body: Form(
                  //key: _formKey,
                  child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(left: 15, top: 30, right: 18),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 7, right: 22),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: getPadding(bottom: 1),
                                                    child: Text(enUs["lbl_position"]!,
                                                        style: CustomTextStyles
                                                            .labelLargePoppins)),
                                                Text(enUs["lbl_number_of_goals"]!,
                                                    style: CustomTextStyles
                                                        .labelLargePoppins)
                                              ])),
                                      Padding(
                                          padding:
                                          getPadding(left: 7, top: 6, right: 7),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                    child: CustomTextFormField(
                                                        // controller: controller
                                                        //     .positionvalueController,
                                                        autofocus: false,
                                                        margin: getMargin(right: 19),
                                                        
                                                        hintText: enUs["lbl_forword"]!,
                                                        hintStyle: CustomTextStyles
                                                            .bodyMediumPoppinsLight,
                                                        suffix: Container(
                                                            margin: getMargin(
                                                                left: 25,
                                                                top: 14,
                                                                right: 20,
                                                                bottom: 13),
                                                            child: CustomImageView(
                                                                svgPath: ImageConstant
                                                                    .imgFrame)),
                                                        suffixConstraints:
                                                        BoxConstraints(
                                                            maxHeight:
                                                            getVerticalSize(
                                                                35)),
                                                        contentPadding: EdgeInsets.all(15)
                                                    )),
                                                Expanded(
                                                    child: CustomTextFormField(
                                                        // controller: controller
                                                        //     .goalsoneController,
                                                        autofocus: false,
                                                        margin: getMargin(left: 19),
                                                        hintText:enUs[ "lbl_0"]!,
                                                        hintStyle: CustomTextStyles
                                                            .bodyMediumPoppinsLight,
                                                        suffix: Container(
                                                            margin: getMargin(
                                                                left: 30,
                                                                top: 18,
                                                                right: 10,
                                                                bottom: 9),
                                                            child: CustomImageView(
                                                                svgPath: ImageConstant
                                                                    .imgFrame)),
                                                        suffixConstraints:
                                                        BoxConstraints(
                                                            maxHeight:
                                                            getVerticalSize(
                                                                35)),
                                                        contentPadding: EdgeInsets.all(15)

                                                    ))
                                              ])),
                                      Padding(
                                          padding: getPadding(left: 7, top: 16),
                                          child: Text(enUs["lbl_yellow_cards"]!,
                                              style: CustomTextStyles
                                                  .labelLargePoppins)),
                                      CustomTextFormField(
                                          //controller:
                                        //  controller.yellowcardsvaluController,
                                          margin:
                                          getMargin(left: 2, top: 5, right: 7),
                                          hintText: enUs["msg_select_no_of_cards"]!,
                                          autofocus: false,
                                          hintStyle:
                                          CustomTextStyles.bodyMediumPoppinsLight,
                                          suffix: Container(
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 14,
                                                  right: 11,
                                                  bottom: 13),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant.imgFrame)),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(35)),
                                          contentPadding: EdgeInsets.all(15)
                                      ),
                                      Padding(
                                          padding: getPadding(left: 7, top: 11),
                                          child: Text(enUs["lbl_red_cards"]!,
                                              style: CustomTextStyles
                                                  .labelLargePoppins)),
                                      CustomTextFormField(
                                          // controller:
                                          //controller.yellowcardsvaluController1,
                                          margin:getMargin(left: 2, top: 5, right: 7),
                                          hintText: enUs[ "msg_select_no_of_cards"]!,
                                          hintStyle:
                                          CustomTextStyles.bodyMediumPoppinsLight,
                                          autofocus: false,
                                          suffix: Container(
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 14,
                                                  right: 11,
                                                  bottom: 13),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant.imgFrame)),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(35)),
                                          contentPadding: EdgeInsets.all(15)
                                      ),
                                      Padding(
                                          padding: getPadding(left: 7, top: 12),
                                          child: Text(enUs["lbl_trainer"]!,
                                              style: CustomTextStyles
                                                  .labelLargePoppins)),
                                      CustomTextFormField(
                                          //controller: controller.nameController,
                                          margin: getMargin(top: 5, right: 7),
                                          autofocus: false,
                                          hintText:enUs[ "msg_enter_the_name_last"]!,
                                          hintStyle:
                                          CustomTextStyles.bodyMediumPoppinsLight,

                                          contentPadding: EdgeInsets.all(15),
                                          textInputAction: TextInputAction.done,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "Please enter valid text";
                                            }
                                            return null;
                                          }),
                                      CustomElevatedButton(
                                          width: getHorizontalSize(136),
                                          height: getVerticalSize(40),
                                          text: enUs["lbl_next"]!,
                                          margin: getMargin(top: 40),
                                          buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL18,
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallPrimaryContainer,
                                          onTap: () {
                                            onTapNext();
                                          },
                                          alignment: Alignment.centerRight)
                                    ]))
                          ])))));
  }

  void onTapNext() {}
}
