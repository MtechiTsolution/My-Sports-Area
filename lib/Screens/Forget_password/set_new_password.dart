import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_sports_app/Screens/Login.dart';

import '../../Utils/image_constant.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          //key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.046),
            child: Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.002, bottom: screenHeight * 0.001,top: screenHeight * 0.1),
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.046,
                  vertical: screenHeight * 0.05),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadius.circular(screenWidth * 0.02),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: screenWidth * 0.5,
                    child: Text("New \n Password",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineMedium),
                  ),
                  SizedBox(height: screenHeight * 0.053),
                  CustomImageView(
                    imagePath: ImageConstant.new_pass,
                    height: screenHeight * 0.152,
                    width: screenWidth * 0.351,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.013, top: screenHeight * 0.038),
                      child: Text("New Password",
                          style: Theme.of(context).textTheme.titleSmall),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.004),
                  PasswordTextField(
                    controller: _newPasswordController,
                    hintText: "Enter Password",
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.013, top: screenHeight * 0.019),
                      child: Text("Confirm password",
                          style: Theme.of(context).textTheme.titleSmall),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.006),
                  PasswordTextField(
                    controller: _confirmPasswordController,
                    hintText: "Confirm Password",
                  ),

                  SizedBox(height: screenHeight * 0.061),
                  CustomElevatedButton(
                    height: screenHeight * 0.047,
                    width: screenWidth * 0.485,
                    text: "Next",
                    buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                    buttonTextStyle:
                    CustomTextStyles.titleSmallPrimaryContainer,
                    onTap: onTapNext,
                  ),
                  SizedBox(height: screenHeight * 0.055),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTapNext() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    // Implement your logic for the "Next" button tap here
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  PasswordTextField({required this.controller, required this.hintText});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscure,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: GestureDetector(
          onTap: _toggleObscure,
          onDoubleTap: _toggleObscure,
          child: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}