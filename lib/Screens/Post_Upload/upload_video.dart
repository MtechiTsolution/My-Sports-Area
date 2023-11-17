import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class PostDialog extends StatelessWidget {
  const PostDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: getVerticalSize(649),
          width: getHorizontalSize(395),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                    top: 491,
                    right: 26,
                    bottom: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: getMargin(
                            right: 14,
                          ),
                          padding: getPadding(
                            left: 11,
                            top: 17,
                            right: 11,
                            bottom: 17,
                          ),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage1,
                                height: getSize(49),
                                width: getSize(49),
                                margin: getMargin(
                                  left: 36,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 21,
                                ),
                                child: Text(
                                 enUs[ "lbl_photio_videos"]!,
                                  style: CustomTextStyles
                                      .titleMediumBlack90001Medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: getMargin(
                            left: 14,
                          ),
                          padding: getPadding(
                            left: 36,
                            top: 15,
                            right: 36,
                            bottom: 15,
                          ),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLayout1,
                                height: getSize(41),
                                width: getSize(41),
                                margin: getMargin(
                                  top: 7,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 27,
                                ),
                                child: Text(
                                  enUs[ "lbl_template"]!,
                                  style: CustomTextStyles
                                      .titleMediumBlack90001Medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: getMargin(
                    right: 2,
                  ),
                  padding: getPadding(
                    top: 11,
                    bottom: 11,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(38),
                        leadingWidth: getHorizontalSize(44),
                        leading: AppbarImage1(
                          imagePath: ImageConstant.imgArrowsmallright38x38,
                          margin: getMargin(
                            left: 6,
                          ),
                        ),
                        title: AppbarSubtitle3(
                          text: enUs["lbl_create_post"]!,
                          margin: getMargin(
                            left: 9,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 6,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse81,
                              height: getSize(35),
                              width: getSize(35),
                              radius: BorderRadius.circular(
                                getHorizontalSize(17),
                              ),
                              margin: getMargin(
                                top: 1,
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    enUs[ "lbl_jarry"]!,
                                    style: CustomTextStyles
                                        .titleMediumBlack90001Bold,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      enUs[ "lbl_player"]!,
                                      style:
                                      CustomTextStyles.bodySmallInter12_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(355),
                          margin: getMargin(
                            left: 19,
                            top: 24,
                            right: 19,
                          ),
                          padding: getPadding(
                            left: 28,
                            top: 20,
                            right: 28,
                            bottom: 20,
                          ),
                          decoration:
                          AppDecoration.fillPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder18,
                          ),
                          child: Text(
                            enUs["msg_what_s_on_your_mind"]!,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 19,
                          top: 14,
                          right: 71,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: getVerticalSize(112),
                              width: getHorizontalSize(95),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle6685,
                                    height: getVerticalSize(112),
                                    width: getHorizontalSize(95),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(15),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomIconButton(
                                    height: getSize(21),
                                    width: getSize(21),
                                    margin: getMargin(
                                      top: 9,
                                      right: 12,
                                    ),
                                    padding: getPadding(
                                      all: 5,
                                    ),
                                    decoration:
                                    IconButtonStyleHelper.fillBlueGrayTL10,
                                    alignment: Alignment.topRight,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup237817,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: getVerticalSize(112),
                              width: getHorizontalSize(95),
                              margin: getMargin(
                                left: 9,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle6686,
                                    height: getVerticalSize(112),
                                    width: getHorizontalSize(95),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(15),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 9,
                                        right: 5,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                            height: getSize(21),
                                            width: getSize(21),
                                            padding: getPadding(
                                              all: 5,
                                            ),
                                            decoration: IconButtonStyleHelper
                                                .fillBlueGrayTL10,
                                            alignment: Alignment.centerRight,
                                            child: CustomImageView(
                                              imagePath:
                                              ImageConstant.imgGroup237817,
                                            ),
                                          ),
                                          CustomIconButton(
                                            height: getSize(37),
                                            width: getSize(37),
                                            margin: getMargin(
                                              top: 9,
                                            ),
                                            padding: getPadding(
                                              all: 3,
                                            ),
                                            decoration: IconButtonStyleHelper
                                                .radiusTL18,
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgForward,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: getVerticalSize(112),
                              width: getHorizontalSize(95),
                              padding: getPadding(
                                left: 28,
                                top: 30,
                                right: 28,
                                bottom: 30,
                              ),
                              decoration:
                              AppDecoration.fillPrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgAddphoto1,
                                height: getVerticalSize(47),
                                width: getHorizontalSize(39),
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomElevatedButton(
                        height: getVerticalSize(41),
                        text: enUs["lbl_pubish"]!,
                        margin: getMargin(
                          left: 39,
                          top: 31,
                          right: 38,
                        ),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL15,
                        buttonTextStyle:
                        CustomTextStyles.titleLargePrimaryContainer,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
