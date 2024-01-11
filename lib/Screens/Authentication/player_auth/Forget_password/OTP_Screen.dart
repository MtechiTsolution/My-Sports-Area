import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Authentication/player_auth/Forget_password/set_new_password.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
import 'package:my_sports_app/providers/ResendTimer.dart';
import 'package:my_sports_app/providers/UserProvider.dart';
import 'package:my_sports_app/widgets/ios_dialogue.dart';
import 'package:provider/provider.dart';

import '../../../../Utils/image_constant.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/custom_button_style.dart';
import '../../../../theme/custom_text_style.dart';
import '../../../../theme/theme_helper.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_form_field.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({required this.email, Key? key}) : super(key: key);
  final String email;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final resendTimer = Provider.of<ResendTimer>(context);
    final minutes = resendTimer.remainingSeconds ~/ 60;
    final seconds = resendTimer.remainingSeconds % 60;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.046),
          child: Container(
            margin: EdgeInsets.only(
                left: screenWidth * 0.002,
                bottom: screenHeight * 0.001,
                top: screenHeight * 0.1),
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.046, vertical: screenHeight * 0.04),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadius.circular(screenWidth * 0.02),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(enUs["lbl_enter_otp"]!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineMedium),
                  ),
                  SizedBox(height: screenHeight * 0.078),
                  CustomImageView(
                    imagePath: ImageConstant.questionMark,
                    height: screenHeight * 0.211,
                    width: screenWidth * 0.581,
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.009, top: screenHeight * 0.098),
                    child: Text(enUs["msg_otp_has_been_send"]!,
                        style: CustomTextStyles.labelLargeBold),
                  ),
                  SizedBox(height: screenHeight * 0.012),
                  CustomTextFormField(
                    controller: otpController,
                    autofocus: false,
                    hintText: enUs["lbl_enter_the_otp"]!,
                    hintStyle: CustomTextStyles.bodySmallLight10,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a OTP NO";
                      }
                      return null;
                    },
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.032,
                        vertical: screenHeight * 0.028),
                  ),
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: Padding(
                  //     padding: EdgeInsets.only(
                  //         top: screenHeight * 0.008,
                  //         right: screenWidth * 0.038),
                  //     child: InkWell(
                  //       onTap: () async {
                  //         showIosDialoge(context);
                  //         var res =
                  //             await UserProvider().forgotPassword(widget.email);
                  //         Navigator.of(context).pop();
                  //         if (res) {
                  //         } else {
                  //           showSnakbar(context);
                  //         }
                  //       },
                  //       child: Text(enUs["lbl_resend_code"]!,
                  //           style: CustomTextStyles.bodySmallLight10),
                  //     ),
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.008,
                          right: screenWidth * 0.038),
                      child: Consumer<ResendTimer>(
                        builder: (context, resendTimer, _) {
                          if (resendTimer.isResendAllowed) {
                            return InkWell(
                              onTap: () async {
                                showIosDialoge(context);
                                var res = await UserProvider()
                                    .forgotPassword(widget.email);
                                Navigator.of(context).pop();
                                if (res) {
                                  resendTimer.startTimer();
                                } else {
                                  showSnakbar(context);
                                }
                              },
                              child: const Text(
                                'Resend',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            );
                          } else {
                            return Text(
                              '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedButton(
                      height: screenHeight * 0.047,
                      width: screenWidth * 0.485,
                      text: enUs["lbl_next"]!,
                      margin: EdgeInsets.only(
                          top: screenHeight * 0.031,
                          bottom: screenHeight * 0.053),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallPrimaryContainer,
                      onTap: onTapNext,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTapNext() async {
    if (_formKey.currentState!.validate()) {
      print(otpController.text);
      showIosDialoge(context);
      _formKey.currentState!.save();

      var res = await UserProvider()
          .verifyResetPassword(otpController.text, widget.email);
      Navigator.of(context).pop();
      if (res) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NewPassword(widget.email, otpController.text)));
      } else {
        showSnakbar(context);
      }
    }
  }
}
