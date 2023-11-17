import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import 'entertainment_result.dart';

class Play_card extends StatefulWidget {
  const Play_card({super.key});

  @override
  State<Play_card> createState() => _Play_cardState();
}

class _Play_cardState extends State<Play_card> {
  bool isNextButtonClicked = false;
  bool isNextButtonClicked1 = false;
  bool isNextButtonClicked2 = false;
  bool isNextButtonClicked3 = false;
  bool isNextButtonClicked4 = false;
  List<bool> isNextButtonClickedList = List.generate(6, (index) => false);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(43),
          leading: AppbarImage1(
              imagePath: ImageConstant.imgHome1,
              margin: getMargin(left: 20, top: 10, bottom: 13)),
          centerTitle: true,
          title: AppbarSubtitle(
              text: enUs["lbl_entertainment"]!,
              margin: getMargin(top: 10, bottom: 8)),
          styleType: Style.bgShadow),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 25, right: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: getPadding(left: 85, top: 10),
                    child: Text(enUs["lbl_footboll"]!,
                        style: theme.textTheme.displaySmall)),
                Container(
                    margin: getMargin(top: 10),
                    padding: getPadding(left: 9, top: 21, right: 9, bottom: 21),
                    decoration: AppDecoration.outlineBlack900016.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder18),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 10, right: 3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(enUs["msg_question_1_out_of"]!,
                                        style: CustomTextStyles
                                            .titleSmallInterMedium),
                                    Text(enUs["lbl_12_sec"]!,
                                        style: CustomTextStyles
                                            .titleSmallInterMedium)
                                  ])),
                          Padding(
                              padding: getPadding(left: 3, top: 93),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: getMargin(top: 7, bottom: 7),
                                        padding: getPadding(left: 12, top: 3, right: 12, bottom: 3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: isNextButtonClicked ? Colors.pink : Colors.white,
                                        ),
                                        child: Text(enUs["lbl_1"]!,
                                          style: CustomTextStyles.headlineMediumInterBlack900,)),
                                    Container(
                                      margin: getMargin(top: 7, bottom: 7),
                                      padding: getPadding(left: 12, top: 3, right: 12, bottom: 3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: isNextButtonClicked ? Colors.pink : Colors.white,
                                      ),
                                      child: Text(
                                        enUs["lbl_2"]!,
                                        style: CustomTextStyles.headlineMediumInterBlack900,
                                      ),
                                    ),

                                    Container(
                                      margin: getMargin(top: 11, bottom: 11),
                                      padding: getPadding(left: 9, top: 1, right: 9, bottom: 1),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: isNextButtonClickedList[1] ? Colors.pink : Colors.white, // Index 1 for this Container
                                      ),
                                      child: Text(
                                        enUs["lbl_3"]!,
                                        style: CustomTextStyles.headlineMediumInterBlack900,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(top: 11, bottom: 11),
                                      padding: getPadding(left: 9, top: 1, right: 9, bottom: 1),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: isNextButtonClickedList[2] ? Colors.pink : Colors.white,
                                      ),
                                      child: Text(
                                        enUs["lbl_4"]!,
                                        style: CustomTextStyles.headlineMediumInterBlack900,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(top: 11, bottom: 11),
                                      padding: getPadding(left: 9, top: 1, right: 9, bottom: 1),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: isNextButtonClickedList[3] ? Colors.pink : Colors.white,
                                      ),
                                      child: Text(
                                        enUs["lbl_5"]!,
                                        style: CustomTextStyles.headlineMediumInterBlack900,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(top: 11, bottom: 11),
                                      padding: getPadding(left: 9, top: 1, right: 9, bottom: 1),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: isNextButtonClickedList[4] ? Colors.pink : Colors.white,
                                      ),
                                      child: Text(
                                        enUs["lbl_6"]!,
                                        style: CustomTextStyles.headlineMediumInterBlack900,
                                      ),
                                    ),
                                  ])),
                          Container(
                              width: getHorizontalSize(312),
                              margin: getMargin(left: 5, top: 42, right: 7),
                              child: Text(enUs["msg_in_which_year_did"]!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium)),
                          CustomElevatedButton(
                              height: getVerticalSize(27),
                             // width: getHorizontalSize(74),
                              text: enUs["lbl_2002"]!,
                              margin: getMargin(left: 5, top: 27),
                              buttonStyle: CustomButtonStyles.fillBlueGray,
                              buttonTextStyle: theme.textTheme.bodyMedium!),
                          CustomElevatedButton(
                              height: getVerticalSize(27),
                              //width: getHorizontalSize(74),
                              text: enUs["lbl_2009"]!,
                              margin: getMargin(left: 5, top: 9),
                              buttonStyle: CustomButtonStyles.fillBlueGray,
                              buttonTextStyle: theme.textTheme.bodyMedium!),
                          CustomElevatedButton(
                              height: getVerticalSize(27),
                             // width: getHorizontalSize(74),
                              text: enUs["lbl_2018"]!,
                              margin: getMargin(left: 5, top: 14),
                              buttonTextStyle: CustomTextStyles
                                  .titleSmallInterPrimaryContainer_1),
                          CustomElevatedButton(
                            height: getVerticalSize(25),
                            width: getHorizontalSize(MediaQuery.of(context).size.width * 0.3),
                            text: enUs["lbl_next"]!,
                            margin: getMargin(top: 26),
                            buttonTextStyle: CustomTextStyles.labelMediumPrimaryContainer,
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Entertainment_Result()));
                              setState(() {
                                isNextButtonClickedList[currentIndex] = !isNextButtonClickedList[currentIndex];
                                if (currentIndex < 5) {
                                  currentIndex++;
                                }
                              });
                            },
                            alignment: Alignment.centerRight,
                            buttonStyle: CustomButtonStyles.fillPink, // Set buttonStyle to fillPink to change the button color to pink
                          )

                        ])),

              ])),
    ));
  }
}




