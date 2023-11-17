import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Messaging/widgets/text_send_box.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_circleimage_1.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/appbar_subtitle_9.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
class Message_view extends StatefulWidget {
  const Message_view({super.key});

  @override
  State<Message_view> createState() => _Message_viewState();
}

class _Message_viewState extends State<Message_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.primaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(36),
                leading: AppbarImage1(
                    imagePath: ImageConstant.imgArrowsmallleft,
                    margin: getMargin(left: 10, top: 5, bottom: 5),
                    onTap: () {
                    //  onTapArrowsmallleft();
                      Navigator.pop(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 114, top: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(children: [
                            AppbarCircleimage1(
                                imagePath: ImageConstant.imgEllipse21,
                                margin: getMargin(top: 5, bottom: 7)),
                            Padding(
                                padding: getPadding(left: 7),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppbarSubtitle1(
                                          text: enUs["lbl_jio"]!,
                                          margin: getMargin(right: 84)),
                                      AppbarSubtitle9(
                                          text: enUs["msg_online_30_min_ago"]!)
                                    ]))
                          ])
                        ])),
                styleType: Style.bgShadow),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: getVerticalSize(45),
                          width: getHorizontalSize(109),
                          margin: getMargin(left: 9, top: 64),
                          child:
                          Stack(
                              alignment: Alignment.topRight,
                              children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(73),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray100,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(15))))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(right: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                              ImageConstant.imgLocation,
                                              height: getSize(28),
                                              width: getSize(28),
                                              margin: getMargin(bottom: 4)),
                                          Padding(
                                              padding:
                                              getPadding(left: 3, top: 15),
                                              child: Text(enUs["lbl_hllo"]!,
                                                  style: CustomTextStyles
                                                      .bodyMediumOnPrimaryContainer))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse21,
                                height: getSize(28),
                                width: getSize(28),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(14)),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(bottom: 7))
                          ])),
                      CustomTextFormField(
                          width: getHorizontalSize(177),
                        //  controller: controller.questiononeController,
                          margin: getMargin(left: 45, top: 9),
                          hintText:enUs[ "lbl_how_are_you"]!,
                          hintStyle:
                          CustomTextStyles.bodyMediumOnPrimaryContainer,
                          contentPadding: getPadding(
                              left: 17, top: 11, right: 17, bottom: 11),
                          borderDecoration:
                          TextFormFieldStyleHelper.fillBlueGray,
                          fillColor: appTheme.blueGray100),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(126),
                              width: getHorizontalSize(155),
                              margin: getMargin(top: 44, right: 12),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            padding: getPadding(
                                                left: 24,
                                                top: 9,
                                                right: 24,
                                                bottom: 9),
                                            // decoration: BoxDecoration(
                                            //     image: DecorationImage(
                                            //         image: fs.Svg(ImageConstant
                                            //             .imgGroup104),
                                            //         fit: BoxFit.cover)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 10),
                                                          child: Text(
                                                             enUs[ "lbl_hi"]!,
                                                              style: CustomTextStyles
                                                                  .bodyMediumOnPrimaryContainer))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 27, bottom: 44),
                                                      child: Text(
                                                          enUs["lbl_i_m_fine"]!,
                                                          style: CustomTextStyles
                                                              .bodyMediumOnPrimaryContainer))
                                                ]))),
                                    CustomElevatedButton(
                                        height: getVerticalSize(36),
                                        width: getHorizontalSize(147),
                                        text:enUs[ "lbl_where_are_you"]!,
                                        buttonStyle:
                                        CustomButtonStyles.fillGray,
                                        buttonTextStyle: CustomTextStyles
                                            .bodyMediumOnPrimaryContainer,
                                        alignment: Alignment.bottomLeft)
                                  ]))),
                      Spacer(),
                      Text_send_box()
                    ])),

        ));
  }

  void onTapImgImage() {}
}
