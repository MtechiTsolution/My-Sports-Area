import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import 'offer_view.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: getVerticalSize(MediaQuery.of(context).size.height * 0.24),
          width: getHorizontalSize(MediaQuery.of(context).size.width * 0.4),
          child: Stack(alignment: Alignment.topRight, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    padding: getPadding(left: 7, top: 8, right: 7, bottom: 8),
                    decoration: AppDecoration.outlineBlack900014
                        .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: getPadding(top: 2),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse28,
                                    height: getSize(25),
                                    width: getSize(25),
                                    radius: BorderRadius.circular(getHorizontalSize(12))),
                                Padding(
                                    padding: getPadding(left: 4),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(enUs["lbl_jae"]!,
                                              style: CustomTextStyles
                                                  .labelLargePoppinsBold_1),
                                          Text(enUs["lbl_senior"]!,
                                              style: CustomTextStyles
                                                  .poppinsBlack90001Medium)
                                        ]))
                              ])),

                          Padding(
                              padding: getPadding(top: 4),
                              child: Text(enUs["msg_250_pre_show_relationship"]!,
                                  style: CustomTextStyles.poppinsBlack90001Bold)),
                          Container(
                              height: getVerticalSize(23),
                              width: getHorizontalSize(36),
                              margin: getMargin(top: 16),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(enUs["lbl_footboll"]!,
                                            style: theme.textTheme.bodySmall)),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(enUs["lbl_dhr"]!,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                          Text(enUs["lbl_seasion_2023"]!,
                              style: theme.textTheme.bodySmall),
                          Container(
                              width: getHorizontalSize(99),
                              margin: getMargin(top: 1),
                              child: Text(enUs["msg_2024_striker_search"]!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall)),
                          CustomElevatedButton(
                            height: getVerticalSize(20),
                            width: getHorizontalSize(130),
                            text: enUs["lbl_view_offer"]!,
                            margin: getMargin(top: 34),
                            buttonStyle: CustomButtonStyles.outlineBlackTL9,
                            buttonTextStyle: CustomTextStyles.labelSmallBold,
                            alignment: Alignment.center,
                            onTap: () {
                              _showBottomToTopDialog(context); // Call the function when the button is pressed
                            },
                          )

                        ]))),
            CustomImageView(
                svgPath: ImageConstant.imgBookmark,
                height: getVerticalSize(43),
                width: getHorizontalSize(46),
                alignment: Alignment.topRight,
                margin: getMargin(right: 5))
          ])),
    );
  }
}

Future<void> _showBottomToTopDialog(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Offer_Dialog(); // Return an instance of Offer_Dialog
    },
  );
}

