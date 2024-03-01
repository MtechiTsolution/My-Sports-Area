import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_sports_app/Screens/Authentication/player_auth/set_profile.dart';
import 'package:my_sports_app/Screens/Home.dart';
import 'package:my_sports_app/generated/assets.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
import 'package:my_sports_app/models/User.dart';
import 'package:my_sports_app/providers/UserProvider.dart';
import 'package:my_sports_app/widgets/custom_elevated_button.dart';
import 'package:my_sports_app/widgets/ios_dialogue.dart';
import 'package:provider/provider.dart';
import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../Utils/them.dart';
import '../../../Utils/validation_functions.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../bio_player.dart';
import '../select_game.dart';
import 'Login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key, required this.userType});
  final UserType userType;

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Form(
        key: _formKey,
        child: Container(
          height: screenHeight,
          color: isDarkMode ? Colors.grey[800] : Colors.white,
          width: double.maxFinite,
          padding: getPadding(left: 17, right: 17),
          child: Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.08,
                bottom: MediaQuery.of(context).size.height * 0.01),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: AppDecoration.outlineBlack.copyWith(
              color: isDarkMode ? Colors.grey[800] : Colors.white,
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getHorizontalSize(122),
                    child: Text(
                      enUs["lbl_create_account"]!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: appheading.appheadings(isDarkMode),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 7, top: 1, bottom: 3),
                  child: Text(enUs["lbl_name"]!,
                      style: labelText.Lebl_Text(isDarkMode)),
                ),
                Padding(
                  padding: getPadding(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          controller: firstNameController,
                          autofocus: false,
                          contentPadding: EdgeInsets.all(15),
                          margin: getMargin(right: 5),
                          hintText: enUs["lbl_first_name"]!,
                          hintStyle: HintText.hint_Text(isDarkMode),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your first name';
                            }
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                        ),
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          controller: lastNameController,
                          autofocus: false,
                          margin: getMargin(left: 5),
                          contentPadding: EdgeInsets.all(15),
                          hintText: enUs["lbl_last_name"]!,
                          hintStyle: HintText.hint_Text(isDarkMode),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your last name';
                            }
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(left: 7, top: 7),
                  child: Text(enUs["lbl_email"]!,
                      style: labelText.Lebl_Text(isDarkMode)),
                ),
                CustomTextFormField(
                  controller: emailController,
                  autofocus: false,
                  margin: getMargin(top: 5),
                  hintText: enUs["lbl_email"]!,
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: HintText.hint_Text(isDarkMode),
                  textInputType: TextInputType.emailAddress,
                  suffix: Container(
                    margin: getMargin(left: 30, top: 9, right: 14, bottom: 6),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGmail1,
                      height: getSize(20),
                      width: getSize(20),
                    ),
                  ),
                  suffixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(35)),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: getPadding(left: 7, top: 20, bottom: 5),
                  child: Text(
                    enUs["lbl_password"]!,
                    style: labelText.Lebl_Text(isDarkMode),
                  ),
                ),
                CustomTextFormField(
                  controller: passwordController,
                  autofocus: false,
                  margin: getMargin(left: 5),
                  contentPadding: EdgeInsets.all(15),
                  hintText: "Enter password",
                  hintStyle: HintText.hint_Text(isDarkMode),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 6) {
                      return "The password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: getPadding(left: 7, top: 9, bottom: 5),
                  child: Text(enUs["msg_confirm_password"]!,
                      style: labelText.Lebl_Text(isDarkMode)),
                ),
                CustomTextFormField(
                  autofocus: false,
                  margin: getMargin(left: 5),
                  hintText: "Confirm Password",
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: HintText.hint_Text(isDarkMode),
                  validator: (value) {
                    final password = passwordController.text;
                    if (value == null || value.isEmpty || value != password) {
                      return 'Passwords do not match';
                    }

                    return null;
                  },
                ),
                CustomElevatedButton(
                  height: getVerticalSize(37),
                  width: getHorizontalSize(185),
                  text: enUs["lbl_create_account"]!,
                  margin: getMargin(top: 31),
                  buttonStyle: CustomButtonStyles.fillPink,
                  buttonTextStyle: ButtonText.button_Text(isDarkMode),
                  onTap: () {
                    onTapCreateaccount(context);
                  },
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtWithlogin();
                    },
                    child: Padding(
                      padding: getPadding(top: 20, bottom: 47),
                      child: Text(enUs["lbl_with_login"]!,
                          style: ClickText.Click_Text(isDarkMode)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Sign Up with"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: screenHeight * 0.09,
                      width: screenHeight * 0.09,
                      padding: EdgeInsets.all(screenHeight * 0.012),
                      onTap: () {
                        // Handle the Facebook login button tap
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapCreateaccount(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      showIosDialoge(context);
      _formKey.currentState!.save();
      UserRegistration userData = UserRegistration(
          email: emailController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          password: passwordController.text,
          passwordConfirmation: passwordController.text,
          status: widget.userType.name);
      var res = await UserProvider().registerUser(userData);
      Navigator.of(context).pop();
      if (res) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Player_Bio()),
        );
      } else {
        showSnakbar(context);
      }
    }
  }

  void onTapTxtWithlogin() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }
}
