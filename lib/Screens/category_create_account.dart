import 'package:flutter/material.dart';
import 'package:my_sports_app/Utils/them.dart';
import 'package:my_sports_app/generated/assets.dart';
import '../Utils/size_utils.dart';
import '../localization/en_us/en_us_translations.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../widgets/custom_elevated_button.dart';
import 'Authentication/player_auth/CreateAccount.dart';
import 'CreateProfile/Secuerty_question.dart';

class CategorySelectionScreen extends StatefulWidget {
  const CategorySelectionScreen({Key? key}) : super(key: key);

  @override
  State<CategorySelectionScreen> createState() =>
      _CategorySelectionScreenState();
}

class _CategorySelectionScreenState extends State<CategorySelectionScreen> {
  bool isPlayerSelected = false;
  bool isCoachSelected = false;
  bool isClubSelected = false;
  UserType usertype = UserType.player;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor:
            Theme.of(context).colorScheme.background, // Updated line
        body: Container(
          color: isDarkMode ? Colors.grey[800] : Colors.white,
          height: MediaQuery.of(context).size.height,
          padding: getPadding(left: 17, right: 17),
          child: Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.14,
                bottom: MediaQuery.of(context).size.height * 0.14),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: AppDecoration.outlineBlack.copyWith(
                color: isDarkMode ? Colors.grey[800] : Colors.white,
                borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: getHorizontalSize(122),
                    child: Text(
                      "Create Account",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextheading.headlineMedium(isDarkMode),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 7, top: 34, bottom: 10),
                  child: Text("Select Category ",
                      style: labelText.Lebl_Text(isDarkMode)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isPlayerSelected = true;
                          isCoachSelected = false;
                          isClubSelected = false;
                          usertype = UserType.player;
                        });
                      },
                      child: _buildCategorySelectionItem(
                        "Player",
                        isPlayerSelected,
                        Icons.check,
                        isDarkMode,
                      ),
                    ),
                    SizedBox(height: getVerticalSize(10)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isPlayerSelected = false;
                          isCoachSelected = true;
                          isClubSelected = false;
                          usertype = UserType.coach;
                        });
                      },
                      child: _buildCategorySelectionItem(
                        "Coach",
                        isCoachSelected,
                        Icons.check,
                        isDarkMode,
                      ),
                    ),
                    SizedBox(height: getVerticalSize(10)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isPlayerSelected = false;
                          isCoachSelected = false;
                          isClubSelected = true;
                          usertype = UserType.club;
                        });
                      },
                      child: _buildCategorySelectionItem(
                        "Club",
                        isClubSelected,
                        Icons.check,
                        isDarkMode,
                      ),
                    ),
                  ],
                ),
                CustomElevatedButton(
                  height: getVerticalSize(57),
                  width: getHorizontalSize(245),
                  text: enUs["lbl_next"]!,
                  margin: getMargin(top: 70, bottom: 130),
                  buttonStyle:
                      isPlayerSelected || isCoachSelected || isClubSelected
                          ? CustomButtonStyles.fillPink
                          : CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
                  onTap: isPlayerSelected || isCoachSelected || isClubSelected
                      ? () {
                          onTapNext();
                        }
                      : null,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySelectionItem(
      String text, bool isSelected, IconData icon, bool isDarkMode) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? (isDarkMode ? AppColors.darkCustomColor : Colors.pink)
            : Colors.transparent,
        border: Border.all(
          color: isSelected
              ? (isDarkMode ? AppColors.darkCustomColor : Colors.pink)
              : (isDarkMode ? AppColors.darkLabelColor : AppColors.black),
        ),
        borderRadius: BorderRadius.circular(getHorizontalSize(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(getHorizontalSize(8)),
              child: Text(
                text,
                style: labelText.Lebl_Text(isDarkMode),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(getHorizontalSize(10)),
            width: getHorizontalSize(30),
            height: getVerticalSize(30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? (isDarkMode ? AppColors.darkCustomColor : AppColors.pink)
                    : (isDarkMode ? AppColors.darkLabelColor : AppColors.black),
              ),
            ),
            child: Center(
              child: isSelected
                  ? Icon(
                      icon,
                      color: isDarkMode
                          ? AppColors.iconColorDark
                          : AppColors.iconColorLight,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }

  void onTapNext() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CreateAccount(userType: usertype)));
  }
}
