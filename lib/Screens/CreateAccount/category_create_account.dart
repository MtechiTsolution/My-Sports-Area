// import 'package:flutter/material.dart';
// import 'package:my_sports_app/Utils/them.dart';
//
// import '../../Utils/size_utils.dart';
// import '../../localization/en_us/en_us_translations.dart';
// import '../../theme/app_decoration.dart';
// import '../../theme/custom_button_style.dart';
// import '../../theme/custom_text_style.dart';
// import '../../theme/theme_helper.dart';
// import '../../widgets/custom_elevated_button.dart';
// import '../Authentication/player_auth/player_inputdetail.dart';
// import 'Sequerty_question.dart';
//
//
//
// // ... other imports ...
//
// class Category_selection_screen extends StatefulWidget {
//   const Category_selection_screen({Key? key}) : super(key: key);
//
//   @override
//   State<Category_selection_screen> createState() =>
//       _Category_selection_screenState();
// }
//
// class _Category_selection_screenState extends State<Category_selection_screen> {
//   bool isPlayerSelected = false;
//   bool isCoachSelected = false;
//   bool isClubSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
//     final double containerHeight =
//         getVerticalSize(MediaQuery.of(context).size.height); // FIGMA_DESIGN_HEIGHT
//     final double containerWidth = getHorizontalSize(393); // FIGMA_DESIGN_WIDTH
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: theme.colorScheme.primaryContainer,
//         body: Container(
//           height: MediaQuery.of(context).size.height * 0.8,
//           width: containerWidth,
//           padding: getPadding(left: 17, right: 17),
//           child: Container(
//             width: getHorizontalSize(358),
//             margin: getMargin(left: 1, top: 71),
//             padding: getPadding(
//                 left: 17, top: 20, right: 17, bottom: 10),
//             decoration: AppDecoration.outlineBlack.copyWith(
//                 borderRadius: BorderRadiusStyle.roundedBorder8),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Align(
//                   alignment: Alignment.center,
//                   child: SizedBox(
//                     width: getHorizontalSize(122),
//                     child: Text(
//                       "Create Account",
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                       style: CustomTextheading.headlineMedium(isDarkMode),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: getPadding(left: 7, top: 34, bottom: 10),
//                   child: Text(
//                     "Select  Category ",
//                     style: labelText.Lebl_Text(isDarkMode),
//                   ),
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           isPlayerSelected = true;
//                           isCoachSelected = false;
//                           isClubSelected = false;
//                         });
//                       },
//                       child: _buildCategorySelectionItem(
//                         "Player",
//                         isPlayerSelected,
//                         Icons.check,
//                       ),
//                     ),
//                     SizedBox(height: getVerticalSize(10)),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           isPlayerSelected = false;
//                           isCoachSelected = true;
//                           isClubSelected = false;
//                         });
//                       },
//                       child: _buildCategorySelectionItem(
//                         "Coach",
//                         isCoachSelected,
//                         Icons.check,
//                       ),
//                     ),
//                     SizedBox(height: getVerticalSize(10)),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           isPlayerSelected = false;
//                           isCoachSelected = false;
//                           isClubSelected = true;
//                         });
//                       },
//                       child: _buildCategorySelectionItem(
//                         "Club",
//                         isClubSelected,
//                         Icons.check,
//                       ),
//                     ),
//                   ],
//                 ),
//                 CustomElevatedButton(
//                   height: getVerticalSize(57),
//                   width: getHorizontalSize(245),
//                   text: enUs["lbl_next"]!,
//                   margin: getMargin(top: 70, bottom: 130),
//                   buttonStyle: isPlayerSelected || isCoachSelected || isClubSelected
//                       ? CustomButtonStyles.fillPink
//                       : CustomButtonStyles.fillGray, // Set your disabled button style here
//                   buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
//                   onTap: isPlayerSelected || isCoachSelected || isClubSelected
//                       ? () {
//                     onTapNext();
//                   }
//                       : null, // Pass null onTap when the button is disabled
//                   alignment: Alignment.center,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildCategorySelectionItem(String text, bool isSelected, IconData icon,) {
//     return Container(
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.pink : Colors.transparent,
//         border: Border.all(
//           color: isSelected ? Colors.pink : Colors.black,
//         ),
//         borderRadius: BorderRadius.circular(getHorizontalSize(8)),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(getHorizontalSize(8)),
//               child: Text(
//                 text,
//                 style: CustomTextheading.headlineMedium(isDarkMode),
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(getHorizontalSize(10)),
//             width: getHorizontalSize(30),
//             height: getVerticalSize(30),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: isSelected ? AppColors.pink : AppColors.black,
//               ),
//             ),
//             child: Center(
//               child: isSelected
//                   ? Icon(
//                 icon,
//                 color: Theme.of(context).brightness == Brightness.dark
//                     ? AppColors.iconColorDark
//                     : AppColors.iconColorLight,
//               )
//                   : null,
//             ),
//           )
//
//
//         ],
//       ),
//     );
//   }
//
//   void onTapNext() {
//     if (isPlayerSelected) {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => Input_Account_Detail()));
//     } else if (isCoachSelected) {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityQuestionScreen()));
//     } else if (isClubSelected) {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => Input_Account_Detail()));
//     }
//     // Implement your logic for handling the "Next" button tap here
//   }
// }
//
//
//
//
import 'package:flutter/material.dart';
import 'package:my_sports_app/Utils/them.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../Authentication/player_auth/player_inputdetail.dart';
import 'Sequerty_question.dart';


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

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;


    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background, // Updated line
        body:
        Container(
          color: isDarkMode ? Colors.grey[800] : Colors.white,
          height: MediaQuery.of(context).size.height,

          padding: getPadding(left: 17, right: 17),
          child:
          Container(
                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.14,bottom: MediaQuery.of(context).size.height*0.14),
                padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                decoration: AppDecoration.outlineBlack.copyWith(
                color: isDarkMode ? Colors.grey[800] : Colors.white,
                borderRadius: BorderRadiusStyle.roundedBorder8),
            child:
            Column(
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
                  child: Text(
                    "Select Category ",
                    style: labelText.Lebl_Text(isDarkMode)
                  ),
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
                  buttonStyle: isPlayerSelected ||
                      isCoachSelected ||
                      isClubSelected
                      ? CustomButtonStyles.fillPink
                      : CustomButtonStyles.fillGray,
                  buttonTextStyle:
                  CustomTextStyles.titleSmallPrimaryContainer,
                  onTap: isPlayerSelected ||
                      isCoachSelected ||
                      isClubSelected
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
                    ? (isDarkMode
                    ? AppColors.darkCustomColor
                    : AppColors.pink)
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
    if (isPlayerSelected) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Input_Account_Detail()));
    } else if (isCoachSelected) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SecurityQuestionScreen()));
    } else if (isClubSelected) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Input_Account_Detail()));
    }
  }
}
