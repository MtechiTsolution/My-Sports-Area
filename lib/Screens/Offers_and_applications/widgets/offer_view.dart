import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_outlined_button.dart';
import 'Accept_offer.dart';


class Offer_Dialog extends StatelessWidget {
  const Offer_Dialog({Key? key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;
        final dialogWidth = screenWidth * 0.9;
        final dialogHeight = screenHeight * 0.9;

        return Container(
          width: getHorizontalSize(dialogWidth),
          height: getVerticalSize(dialogHeight),
          padding: getPadding(
            left: screenWidth * 0.05,
            top: screenHeight * 0.03,
            right: screenWidth * 0.05,
            bottom: screenHeight * 0.03,
          ),
          decoration: AppDecoration.fillPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Offers",
                    style: CustomTextStyles.headlineLargePoppinsBlack90001,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse2871x71,
                        height: getSize(71),
                        width: getSize(71),
                        radius: BorderRadius.circular(
                          getHorizontalSize(35),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 21,
                          top: 10,
                          bottom: 15,
                        ),
                        child: Text(
                          enUs["lbl_jae"]!,
                          style: CustomTextStyles.headlineLargePoppinsBlack90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 26,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTrophystar1,
                        height: getSize(15),
                        width: getSize(15),
                        margin: getMargin(
                          top: 4,
                          bottom: 3,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: Text(
                          enUs[ "msg_sports_football"]!,
                          style: CustomTextStyles.bodyMediumPoppinsBlack90015_1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 4,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCategories3,
                        height: getSize(17),
                        width: getSize(17),
                        margin: getMargin(
                          top: 1,
                          bottom: 4,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: enUs["lbl_category3"]!,
                                style: CustomTextStyles.titleSmallBlack900SemiBold15,
                              ),
                              TextSpan(
                                text: enUs["lbl_senior2"]!,
                                style: CustomTextStyles.bodyMediumPoppinsBlack90015,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 3,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVolume1,
                        height: getSize(15),
                        width: getSize(15),
                        margin: getMargin(
                          top: 3,
                          bottom: 4,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: enUs["lbl_level2"]!,
                                style: CustomTextStyles.titleSmallBlack900SemiBold15,
                              ),
                              TextSpan(
                                text:enUs[ "lbl_dhr"]!,
                                style: CustomTextStyles.bodyMediumPoppinsBlack90015,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 4,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTime1,
                        height: getSize(15),
                        width: getSize(15),
                        margin: getMargin(
                          top: 4,
                          bottom: 3,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: enUs["lbl_session"]!,
                                style: CustomTextStyles.titleSmallBlack900SemiBold15,
                              ),
                              TextSpan(
                                text: enUs["lbl_do23_24"]!,
                                style: CustomTextStyles.bodyMediumPoppinsBlack90015,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 2,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAge1,
                        height: getSize(13),
                        width: getSize(13),
                        margin: getMargin(
                          top: 4,
                          bottom: 5,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:enUs[ "lbl_average_age"]!,
                                style: CustomTextStyles.titleSmallBlack900SemiBold15,
                              ),
                              TextSpan(
                                text: enUs["lbl_21_years"]!,
                                style: CustomTextStyles.bodyMediumPoppinsBlack90015,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    enUs["lbl_description"]!,
                    style: CustomTextStyles.titleMediumPoppinsBlack900_1,
                  ),
                ),
                Container(
                  width: getHorizontalSize(311),
                  margin: getMargin(
                    top: 3,
                    right: 18,
                  ),
                  child: Text(
                    enUs[ "msg_comment_restructuring"]!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumPoppinsBlack900_1,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 12,
                      top: 26,
                      right: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomElevatedButton(

                            height: getVerticalSize(34),
                            text: enUs["lbl_accapt"]!,
                            margin: getMargin(
                              right: 7,
                            ),
                            onTap: (){
                              OnTap_Accept(context);
                            },
                            buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                            buttonTextStyle:
                            CustomTextStyles.titleMediumPoppinsPrimaryContainer,
                          ),
                        ),
                        Expanded(
                          child: CustomOutlinedButton(
                            text: enUs["lbl_reject"]!,
                            margin: getMargin(
                              left: 7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  void OnTap_Accept(BuildContext context) {
  //  showSuccessDialog(context);
    Navigator.pop(context); // Close the previous dialog
  }

}
