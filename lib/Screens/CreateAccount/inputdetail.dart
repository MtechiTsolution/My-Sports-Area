import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
import 'package:my_sports_app/widgets/custom_elevated_button.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../Utils/validation_functions.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Login.dart';
import 'last_club_played.dart';

class Input_Account_Detail extends StatefulWidget {
  const Input_Account_Detail({super.key});

  @override
  State<Input_Account_Detail> createState() => _Input_Account_DetailState();
}

class _Input_Account_DetailState extends State<Input_Account_Detail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Form(
           // key: _formKey,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, right: 17),
                child: Container(
                    margin: getMargin(left: 1, top: 71),
                    padding: getPadding(
                        left: 17, top: 20, right: 17, bottom: 20),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: getHorizontalSize(122),
                                  child: Text(enUs["lbl_create_account"]!,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style:
                                      theme.textTheme.headlineMedium))),
                          Padding(
                              padding: getPadding(left: 7, top: 1,bottom: 3),
                              child: Text(enUs["lbl_name"]!,
                                  style: theme.textTheme.titleSmall)),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomTextFormField(
                                            // controller:
                                            // controller.nameController,
                                          contentPadding: EdgeInsets.all(15),
                                            margin: getMargin(right: 5),

                                            hintText: enUs[ "lbl_first_name"]!,
                                            hintStyle: CustomTextStyles
                                                .bodyMediumPoppinsLight,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            })),
                                    Expanded(
                                        child: CustomTextFormField(
                                            // controller: controller
                                            //     .lastNameController,
                                            margin: getMargin(left: 5),
                                            contentPadding: EdgeInsets.all(15),
                                            hintText: enUs[ "lbl_last_name"]!,
                                            hintStyle: CustomTextStyles
                                                .bodyMediumPoppinsLight,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            })

                                    )
                                  ])),
                          Padding(
                              padding: getPadding(left: 7, top: 7),
                              child: Text(enUs["lbl_email"]!,
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                         //     controller: controller.emailController,
                              margin: getMargin(top: 5),
                              hintText: enUs["lbl_email"]!,
                              contentPadding: EdgeInsets.all(15),
                              hintStyle: theme.textTheme.bodyMedium!,
                              textInputType: TextInputType.emailAddress,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30,
                                      top: 9,
                                      right: 14,
                                      bottom: 6),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGmail1,
                                      height: getSize(20),
                                      width: getSize(20))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(35)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value,
                                        isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              },

                          ),
                          Padding(
                              padding: getPadding(left: 7, top: 16),
                              child: Text(enUs["lbl_date_of_birth"]!,
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              //controller: controller.dateOfBirthController,
                              margin: getMargin(top: 8),

                              hintText: enUs["msg_birthday_optional"]!,
                              hintStyle:
                              CustomTextStyles.bodyMediumPoppinsLight,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30,
                                      top: 9,
                                      right: 15,
                                      bottom: 9),
                                  child: CustomImageView(
                                      imagePath:
                                      ImageConstant.imgCalendar11,
                                      height: getSize(17),
                                      width: getSize(17))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(35)),
                            contentPadding: EdgeInsets.all(15),

                          ),
                          Padding(
                              padding: getPadding(left: 7, top: 20),
                              child: Text(enUs["lbl_password"]!,
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                            // controller: controller
                            //     .lastNameController,
                              margin: getMargin(left: 5),
                              contentPadding: EdgeInsets.all(15),
                              hintText: "Enter password",
                              hintStyle: CustomTextStyles
                                  .bodyMediumPoppinsLight,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 7, top: 9),
                              child: Text(enUs["msg_confirm_password"]!,
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                            // controller: controller
                            //     .lastNameController,
                              margin: getMargin(left: 5),
                              hintText: "Confirm Password",
                              contentPadding: EdgeInsets.all(15),
                              hintStyle: CustomTextStyles
                                  .bodyMediumPoppinsLight,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomElevatedButton(
                              height: getVerticalSize(37),
                              width: getHorizontalSize(185),
                              text: enUs["lbl_create_account"]!,
                              margin: getMargin(top: 31),
                              buttonStyle: CustomButtonStyles.fillPink,
                              buttonTextStyle: CustomTextStyles
                                  .titleSmallPrimaryContainer,
                              onTap: () {
                                onTapCreateaccount();
                              },
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtWithlogin();
                                  },
                                  child: Padding(
                                      padding:
                                      getPadding(top: 20, bottom: 47),
                                      child: Text(enUs["lbl_with_login"]!,
                                          style: CustomTextStyles
                                              .titleMediumBlueA200
                                              .copyWith(
                                              decoration: TextDecoration
                                                  .underline)))))
                        ])))));
  }

  void onTapCreateaccount() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LastClubPlayed()));

  }

  void onTapTxtWithlogin() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
  }
}
