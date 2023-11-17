import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_image_3.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_5.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart';

class Notification_setting extends StatefulWidget {
  const Notification_setting({super.key});

  @override
  State<Notification_setting> createState() => _Notification_settingState();
}

class _Notification_settingState extends State<Notification_setting> {
  bool isSelectedSwitch1 = false;
  bool isSelectedSwitch2 = false;
  bool isSelectedSwitch3 = false;



  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.primaryContainer,

          appBar: CustomAppBar(
            leadingWidth: getHorizontalSize(42),
            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },

                child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
            centerTitle: true,
            title: AppbarSubtitle(
              text: enUs["lbl_notifications"]!,
              margin: getMargin(top: 10, bottom: 8),
            ),
            actions: [
              AppbarImage2(
                imagePath: ImageConstant.imgSetting1,
                margin: getMargin(left: 13, top: 10, right: 13, bottom: 8),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notification_setting()));
                  //onTapSettingtwoone();
                },
              ),
            ],
            styleType: Style.bgShadow,
          ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 13, right: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 29, top: 33),
                          child: Text(enUs["msg_inbox_notifications"]!,
                              style: theme.textTheme.titleMedium)),
                      Container(
                          margin: getMargin(left: 7, top: 9),
                          padding: getPadding(
                              left: 16, top: 6, right: 16, bottom: 6),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                    getPadding(left: 6, top: 4, bottom: 6),
                                    child: Text(enUs["msg_show_notifications"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomSwitch(
                                  value: isSelectedSwitch2,
                                  onChange: (value) {
                                    setState(() {
                                      isSelectedSwitch2 = value;
                                    });
                                  },
                                ),
                              ])),
                      Container(
                          margin: getMargin(left: 7, top: 10),
                          padding: getPadding(
                              left: 13, top: 11, right: 13, bottom: 11),
                          decoration: AppDecoration.fillGray20003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: getPadding(left: 9),
                                    child: Text(enUs["lbl_sound"]!,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(),
                                Text(enUs["lbl_note"]!,
                                    style: theme.textTheme.titleSmall),
                                CustomImageView(
                                    imagePath: ImageConstant.imgNext1,
                                    height: getSize(15),
                                    width: getSize(15),
                                    margin:
                                    getMargin(left: 5, top: 2, bottom: 3))
                              ])),
                      Container(
                          margin: getMargin(left: 7, top: 10),
                          padding: getPadding(
                              left: 16, top: 6, right: 16, bottom: 6),
                          decoration: AppDecoration.fillGray20003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                    getPadding(left: 6, top: 4, bottom: 6),
                                    child: Text(enUs["msg_reaction_notification"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomSwitch(
                                  value: isSelectedSwitch2,
                                  onChange: (value) {
                                    setState(() {
                                      isSelectedSwitch2 = value;
                                    });
                                  },
                                ),
                              ])),
                      Padding(
                          padding: getPadding(left: 29, top: 69),
                          child: Text(enUs["msg_group_notifications"]!,
                              style: theme.textTheme.titleMedium)),
                      Container(
                          margin: getMargin(left: 7, top: 4),
                          padding: getPadding(
                              left: 16, top: 6, right: 16, bottom: 6),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                    getPadding(left: 6, top: 4, bottom: 6),
                                    child: Text(enUs["msg_show_notifications"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomSwitch(
                                  value: isSelectedSwitch3,
                                  onChange: (value) {
                                    setState(() {
                                      isSelectedSwitch3 = value;
                                    });
                                  },
                                ),
                              ])),
                      Container(
                          margin: getMargin(left: 7, top: 10),
                          padding: getPadding(
                              left: 13, top: 10, right: 13, bottom: 10),
                          decoration: AppDecoration.fillGray20003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: getPadding(left: 9, top: 2),
                                    child: Text(enUs["lbl_sound"]!,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text(enUs["lbl_note"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgNext1,
                                    height: getSize(15),
                                    width: getSize(15),
                                    margin:
                                    getMargin(left: 5, top: 4, bottom: 3))
                              ])),
                      Container(
                          margin: getMargin(left: 7, top: 10),
                          padding: getPadding(
                              left: 16, top: 6, right: 16, bottom: 6),
                          decoration: AppDecoration.fillGray20003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                    getPadding(left: 6, top: 4, bottom: 6),
                                    child: Text(enUs["msg_reaction_notification"]!,
                                        style: theme.textTheme.titleSmall)),
                                CustomSwitch(
                                  value: isSelectedSwitch3,
                                  onChange: (value) {
                                    setState(() {
                                      isSelectedSwitch3 = value;
                                    });
                                  },
                                ),
                              ])),
                      CustomTextFormField(
                        //  controller: controller.resetNotificatiController,
                          margin: getMargin(left: 7, top: 54),
                          hintText: enUs["msg_resat_notification"]!,
                          hintStyle: CustomTextStyles.titleSmallRedA700,
                          textInputAction: TextInputAction.done,
                          contentPadding: getPadding(
                              left: 22, top: 11, right: 22, bottom: 11),
                          borderDecoration:
                          TextFormFieldStyleHelper.fillGrayTL10,
                          fillColor: appTheme.gray20003),
                      Container(
                          width: getHorizontalSize(290),
                          margin: getMargin(left: 24, top: 10, right: 52),
                          child: Text(enUs["msg_resat_all_notifications"]!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallLight10)),

                    ])),


        ));
  }
}






