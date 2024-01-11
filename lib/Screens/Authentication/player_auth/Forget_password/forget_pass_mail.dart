import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
import 'package:my_sports_app/providers/ResendTimer.dart';
import 'package:my_sports_app/providers/UserProvider.dart';
import 'package:my_sports_app/widgets/ios_dialogue.dart';

import '../../../../Utils/image_constant.dart';
import '../../../../Utils/validation_functions.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/custom_button_style.dart';
import '../../../../theme/custom_text_style.dart';
import '../../../../theme/theme_helper.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_form_field.dart';
import 'OTP_Screen.dart';

class ForgetPassMail extends StatefulWidget {
  const ForgetPassMail({Key? key}) : super(key: key);

  @override
  State<ForgetPassMail> createState() => _ForgetPassMailState();
}

class _ForgetPassMailState extends State<ForgetPassMail> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.01,
                  bottom: screenHeight * 0.01,
                  top: screenHeight * 0.1),
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.045),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadius.circular(screenWidth * 0.01),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: screenWidth * 0.28,
                        child: Text(
                          "Forget password",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.03, top: screenHeight * 0.036),
                      child: Text("Enter your email",
                          style: CustomTextStyles.labelLargeBold),
                    ),
                    SizedBox(height: screenHeight * 0.018),
                    CustomTextFormField(
                      controller: emailController,
                      autofocus: false,
                      // controller: controller.emailController,
                      hintText: "mysports1290@gmail.com",
                      hintStyle: CustomTextStyles.bodySmallLight10,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.027,
                          vertical: screenHeight * 0.025),
                    ),
                    SizedBox(height: screenHeight * 0.078),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomImageView(
                          imagePath: ImageConstant.lockPass,
                          height: screenHeight * 0.22,
                          width: screenWidth * 0.336,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomElevatedButton(
                        height: screenHeight * 0.047,
                        width: screenWidth * 0.485,
                        text: enUs["lbl_next"]!,
                        margin: EdgeInsets.only(
                            top: screenHeight * 0.061,
                            bottom: screenHeight * 0.05),
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
      ),
    );
  }

  void onTapNext() async {
    if (_formKey.currentState!.validate()) {
      showIosDialoge(context);
      _formKey.currentState!.save();

      var res = await UserProvider().forgotPassword(emailController.text);
      Navigator.of(context).pop();
      if (res) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OTPScreen(
                      email: emailController.text,
                    )));
      } else {
        showSnakbar(context);
      }
    }
  }
}
