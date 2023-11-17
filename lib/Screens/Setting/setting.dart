import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Setting/privacy.dart';
import 'package:my_sports_app/Screens/player_profile.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_image_3.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_5.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';



class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool doNotDisturb = false;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
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
                text: enUs["lbl_setting"]!,
                margin: getMargin(top: 10, bottom: 8),
              ),

              styleType: Style.bgShadow,
            ),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              //onTapRowbelltwentyon();
                            },
                            child: Container(
                                margin: getMargin(left: 1, top: 34),
                                padding: getPadding(
                                    left: 17, top: 7, right: 17, bottom: 7),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgBell21,
                                          height: getSize(26),
                                          width: getSize(26),
                                          margin: getMargin(bottom: 4)),
                                      Padding(
                                          padding:
                                          getPadding(left: 12, bottom: 8),
                                          child: Text(enUs["lbl_notifications"]!,
                                              style: theme.textTheme.titleSmall))
                                    ]))),
                        GestureDetector(
                          onTap: () {
                             onTap_Row_privacy();
                          },
                          child: Container(
                            margin: getMargin(left: 1, top: 10),
                            padding: getPadding(left: 18, top: 9, right: 18, bottom: 9),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPrivacy1,
                                  height: getSize(26),
                                  width: getSize(26),
                                ),
                                Padding(
                                  padding: getPadding(left: 11, top: 4),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        enUs["lbl_privacy"]!,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      SizedBox(height: 4), // Add some spacing between text and icon

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(left: 1, top: 10),
                          padding: getPadding(left: 18, top: 2, right: 18, bottom: 2),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.do_not_disturb,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Do Not Disturb",
                                style: theme.textTheme.titleSmall,
                              ),
                              Spacer(), // Add a Spacer widget to push the Switch to the right
                              Switch(
                                value: doNotDisturb,
                                onChanged: (value) {
                                  setState(() {
                                    doNotDisturb = value;
                                  });
                                },
                                activeColor: Colors.pink, // Set the toggle button color to pink
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: getVerticalSize(49),
                          width: getHorizontalSize(237),
                          margin: getMargin(left: 20),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _showLanguageSelectionDialog(context); // Show language selection dialog
                                      },
                                      child: Text(
                                        enUs["lbl_language"]!,
                                        style: CustomTextStyles.bodyMediumPoppins15,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgLanguage1,
                                      height: getSize(14),
                                      width: getSize(14),
                                      margin: getMargin(left: 12, top: 3, bottom: 5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ])),

          ));
  }

  void onTap_Row_privacy() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy_setting()));

  }
}




void _showLanguageSelectionDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
            title: Text('English'),
            onTap: () {
              // Change the app language to English
              // Call your language change function here
              // For example: LanguageManager.setLanguage('en');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('French'),
            onTap: () {
              // Change the app language to French
              // Call your language change function here
              // For example: LanguageManager.setLanguage('fr');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

