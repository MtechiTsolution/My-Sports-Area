import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';

class Text_send_box extends StatefulWidget {
  const Text_send_box({super.key});

  @override
  State<Text_send_box> createState() => _Text_send_boxState();
}

class _Text_send_boxState extends State<Text_send_box> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(left: 10, right: 10),
        decoration: AppDecoration.fillGray200,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: getPadding(top: 12, right: 6,bottom: MediaQuery.of(context).size.height*0.02,),
                  child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath:
                            ImageConstant.imgCamera,
                            height: getSize(16),
                            width: getSize(16),
                            margin:
                            getMargin(top: 3, bottom: 5)),
                        CustomImageView(
                            imagePath:
                            ImageConstant.imgMicrophone,
                            height: getSize(16),
                            width: getSize(16),
                            margin: getMargin(
                                left: 10, top: 3, bottom: 5)),
                        CustomImageView(
                            imagePath:
                            ImageConstant.imgPicture2,
                            height: getSize(15),
                            width: getSize(15),
                            margin: getMargin(
                                left: 13, top: 3, bottom: 5)),
                        CustomTextFormField(

                            width: getHorizontalSize(223),
                            // controller: controller
                            //     .responsethreeController,
                            margin: getMargin(left: 8),
                            hintText:
                            enUs[ "lbl_enter_samething"]!,
                            hintStyle:
                            CustomTextStyles.bodySmall10,
                            textInputAction:
                            TextInputAction.done,
                            suffix: Container(
                                margin: getMargin(
                                    left: 12,
                                    top: 6,
                                    right: 11,
                                    bottom: 6),
                                child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgPaperplane1,
                                    height: getSize(12),
                                    width: getSize(12))),
                            suffixConstraints: BoxConstraints(
                                maxHeight:
                                getVerticalSize(24)),
                            contentPadding: EdgeInsets.all(12),
                            borderDecoration:
                            TextFormFieldStyleHelper
                                .fillBlueGrayTL12,
                            fillColor: appTheme.blueGray100),
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgVideocameraalt,
                            height: getSize(20),
                            width: getSize(20),
                            margin: getMargin(
                                left: 16, top: 2, bottom: 2)),
                        CustomImageView(
                            imagePath:
                            ImageConstant.imgPhoneflip,
                            height: getSize(16),
                            width: getSize(16),
                            margin: getMargin(
                                left: 14, top: 3, bottom: 4))
                      ])),

            ]));
  }
}
