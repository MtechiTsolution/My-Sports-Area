import 'package:flutter/material.dart';
import 'package:my_sports_app/generated/assets.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_button.dart';
import '../../widgets/app_bar/appbar_circleimage.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_subtitle_7.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';

class upload_post_one extends StatefulWidget {
  const upload_post_one({super.key});

  @override
  State<upload_post_one> createState() => _upload_post_oneState();
}

class _upload_post_oneState extends State<upload_post_one> {
  @override
  Widget build(BuildContext context) {
    return    SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            appBar:
            AppBar(
              backgroundColor: Colors.white,
              leading: Icon(Icons.close, color: Colors.black),
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_rectangle59.png'), // Replace with your actual asset path
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      enUs["lbl_antone"]!,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              actions: [
                SizedBox(
                  width: 90.0,
                  height: 20.0,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                    ),
                    child: Text("Post"),
                  ),
                ),
              ],
              // Set the toolbarHeight to increase the height of the AppBar
              toolbarHeight: 60.0, // Adjust the height as needed
            ),


            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(left: 15, top: 34),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: enUs["msg_what_do_you_want"],
                            hintStyle: CustomTextStyles.titleMediumBlack90001Medium,
                            border: InputBorder.none, // Remove the underline
                            // You can customize the appearance of the text field here
                          ),
                        ),
                      ),

                      Spacer()
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 36, right: 25, bottom: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage1,
                                      height: getSize(41),
                                      width: getSize(41),
                                      margin: getMargin(top: 7)),
                                  Padding(
                                      padding: getPadding(top: 27),
                                      child: Text(enUs["lbl_photio_videos"]!,
                                          style: CustomTextStyles
                                              .titleMediumBlack90001Medium))
                                ])),
                      ),
                      Container(
                          padding: getPadding(
                              left: 36, top: 15, right: 36, bottom: 15),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLayout1,
                                    height: getSize(41),
                                    width: getSize(41),
                                    margin: getMargin(top: 7)),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text(enUs["lbl_template"]!,
                                        style: CustomTextStyles
                                            .titleMediumBlack90001Medium))
                              ]))
                    ]))));
  }
}
