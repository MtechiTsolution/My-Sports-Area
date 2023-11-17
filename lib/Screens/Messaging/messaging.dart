import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Messaging/widgets/message_item.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';


import 'mesage_view.dart';


class MessagingScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      body: Column(
        children: <Widget>[
          // Custom AppBar
          CustomAppBar(

            leadingWidth: getHorizontalSize(42),
            leading: AppbarImage1(
              imagePath: ImageConstant.imgHome1,
              margin: getMargin(left: 19, top: 10, bottom: 13),
              onTap: () {
                // onTapHometwoone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: enUs["lbl_messaging"]!,
              margin: getMargin(top: 10, bottom: 5),
            ),
            styleType: Style.bgShadow,
          ),
          // Custom SearchBar
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:
            CustomSearchBar(
              controller: searchController,
              onClear: () {
                searchController.clear();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8, // Adjust the count as needed
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to the MessageViewScreen when a message item is clicked
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Message_view(),
                      ),
                    );
                  },
                  child: MessageItem(
                    profileImageUrl: 'assets/images/logo.png',
                    name: 'Mujahid',
                    lastMessage: 'how are you bro?....',
                    time: '12:03:23 PM',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

