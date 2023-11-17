import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/HomeScreen/widgets/post_item.dart';
import 'package:my_sports_app/Screens/HomeScreen/widgets/post_item2.dart';
import 'package:my_sports_app/Screens/HomeScreen/widgets/video_item.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        title: Icon(
          Icons.home,
          color: Colors.black,
        ),
        // Home icon
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              // Person profile icon
              onPressed: () {
                // Add the logic for handling the profile icon click here
              },
            ),
          ),
        ],
      ),
      body: SizedBox(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [

            Expanded(
                child: SingleChildScrollView(
                    padding: getPadding(top: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          post_item(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                            child: Divider(height: 1, color: Colors.black,),
                          ),
                          // sample of opther posts*************************
                          post_item2(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                            child: Divider(height: 1, color: Colors.black,),
                          ),
                         // video section
                          Video_item(),
                        ])))
          ])),
    );
  }
}

