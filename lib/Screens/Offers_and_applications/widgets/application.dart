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

class Applications extends StatefulWidget {
  const Applications({super.key});

  @override
  State<Applications> createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: SizedBox(
          height: getVerticalSize(MediaQuery.of(context).size.height*0.24),
          width: getHorizontalSize(MediaQuery.of(context).size.width*0.4),
          child: Container(
              margin: getMargin(top: 0),
              padding: getPadding(left: 5, top: 8, right: 5, bottom: 8),
              decoration: AppDecoration.outlineBlack900014
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(top: 2),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse29,
                              height: getSize(25),
                              width: getSize(25),
                              radius: BorderRadius.circular(getHorizontalSize(12))),
                          Padding(
                              padding: getPadding(left: 4),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(enUs["lbl_clary"]!,
                                        style: CustomTextStyles
                                            .labelLargePoppinsBold_1),
                                    Text(enUs["lbl_a_leader"]!,
                                        style: CustomTextStyles
                                            .poppinsBlack90001Medium)
                                  ]))
                        ])),
                    Padding(
                        padding: getPadding(top: 3),
                        child: Text(enUs["msg_250_pre_show_1230"]!,
                            style: CustomTextStyles.poppinsBlack90001Bold)),
                    Padding(
                        padding: getPadding(top: 5),
                        child: Text(enUs["msg_basketball_national"]!,
                            style: theme.textTheme.bodySmall)),
                    Text(enUs["lbl_france_paca"]!,
                        style: theme.textTheme.bodySmall),
                    Text(enUs["lbl_seasion_2023"]!,
                        style: theme.textTheme.bodySmall),
                    Container(
                        width: getHorizontalSize(110),
                        margin: getMargin(top: 4),
                        child: Text(enUs["msg_search_aclub_b"]!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall)),
                    CustomElevatedButton(
                        height: getVerticalSize(20),
                        width: getHorizontalSize(130),
                        text: enUs["lbl_apply_now"]!,
                        margin: getMargin(top: 27),
                        buttonStyle: CustomButtonStyles.outlineBlackTL9,
                        buttonTextStyle: CustomTextStyles.labelSmallBold,
                        alignment: Alignment.center)
                  ])),
        ),
      ),
    );
  }
}
