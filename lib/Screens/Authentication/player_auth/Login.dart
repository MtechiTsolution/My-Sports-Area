import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:my_sports_app/Screens/Authentication/player_auth/Forget_password/forget_pass_mail.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
import 'package:my_sports_app/models/User.dart';
import 'package:my_sports_app/providers/UserProvider.dart';
import 'package:my_sports_app/widgets/ios_dialogue.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../Utils/validation_functions.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.primaryContainer,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.08,
              vertical: screenHeight * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenWidth * 0.55,
                  child: Text(
                    enUs["lbl_welcome_to"]!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeJostBlack90001,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: CustomImageView(
                    imagePath: 'assets/images/logo.png',
                    height: screenHeight * 0.1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text(
                    "MY SPORTS",
                    style: CustomTextStyles.headlineLargeBlack90001,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    enUs["lbl_login"]!,
                    style: CustomTextStyles.headlineLargeBlack90001,
                  ),
                ),
                Container(
                  width: screenWidth * 0.65,
                  child: Text(
                    enUs["msg_to_save_your_preferences"]!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumPoppinsLight_1,
                  ),
                ),
                CustomTextFormField(
                  controller: emailController,
                  margin: EdgeInsets.only(top: screenHeight * 0.02),
                  hintText: enUs["lbl_email"]!,
                  textStyle: TextStyle(color: Colors.white),
                  hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
                  textInputType: TextInputType.emailAddress,
                  suffix: Container(
                    padding: EdgeInsets.only(right: 10),
                    margin: EdgeInsets.only(left: screenWidth * 0.03),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGmail1,
                      height: getSize(20),
                      width: getSize(20),
                    ),
                  ),
                  suffixConstraints:
                      BoxConstraints(maxHeight: screenHeight * 0.048),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.03,
                    vertical: screenHeight * 0.02,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillBlack,
                  fillColor: appTheme.black90001,
                ),
                CustomTextFormField(
                  controller: passwordController,
                  margin: EdgeInsets.only(top: screenHeight * 0.02),
                  hintText: enUs["lbl_password"]!,
                  textStyle: TextStyle(color: Colors.white),
                  hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
                  textInputType: TextInputType.emailAddress,
                  suffix: GestureDetector(
                    onTap: () {
                      // Handle the visibility toggle action here
                      // You may need to implement logic to toggle the visibility of the password
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      margin: EdgeInsets.only(left: screenWidth * 0.03),
                      child: Icon(
                        Icons.visibility,
                        size: getSize(20),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  suffixConstraints:
                      BoxConstraints(maxHeight: screenHeight * 0.048),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.03,
                    vertical: screenHeight * 0.02,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillBlack,
                  fillColor: appTheme.black90001,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPassMail(),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(screenHeight * 0.01),
                      child: Text(
                        "Forget Password",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: screenHeight * 0.037,
                  width: screenWidth * 0.25,
                  text: enUs["lbl_sign_in"]!,
                  margin: EdgeInsets.only(top: screenHeight * 0.026),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                  onTap: () {
                    onTapSignin();
                  },
                ),
                GestureDetector(
                  onTap: () {
                    // onTapTxtCreateanewacoun();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.024),
                    child: Text(
                      enUs["msg_create_a_new_acount"]!,
                      style: CustomTextStyles.titleSmallInter_1,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: screenHeight * 0.09,
                      width: screenHeight * 0.09,
                      padding: EdgeInsets.all(screenHeight * 0.012),
                      onTap: () {
                        // Handle the Facebook login button tap here
                      },
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        size: screenHeight * 0.05,
                        color: Colors.blue,
                      ),
                    ),
                    CustomIconButton(
                      height: screenHeight * 0.09,
                      width: screenHeight * 0.09,
                      padding: EdgeInsets.all(screenHeight * 0.012),
                      onTap: () {
                        // Handle the Google login button tap here
                      },
                      child: Icon(
                        FontAwesomeIcons.google,
                        size: screenHeight * 0.05,
                        color: Colors.red,
                      ),
                    ),
                    CustomIconButton(
                      height: screenHeight * 0.09,
                      width: screenHeight * 0.09,
                      padding: EdgeInsets.all(screenHeight * 0.012),
                      onTap: () {
                        // Handle the Instagram login button tap here
                      },
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        size: screenHeight * 0.05,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.006,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: enUs["msg_alright_have_an2"]!,
                          style: CustomTextStyles.bodySmallLight,
                        ),
                        TextSpan(
                          text: enUs["lbl_login2"]!,
                          style: CustomTextStyles.labelLargePoppinsBold_2,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapSignin() async {
    if (_formKey.currentState!.validate()) {
      showIosDialoge(context);
      _formKey.currentState!.save();
      UserLogin userData = UserLogin(
          email: emailController.text, password: passwordController.text);
      var res = await UserProvider().loginUser(userData);
      Navigator.of(context).pop();
      if (res) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()),
          (route) => false,
        );
      } else {
        showSnakbar(context);
      }
    }
  }
}
