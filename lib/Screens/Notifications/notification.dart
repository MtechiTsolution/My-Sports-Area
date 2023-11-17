import 'package:flutter/material.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';
import '../Offers_and_applications/widgets/custom_search_view.dart';
import 'notification_setting.dart';
class NotificationsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(42),
          leading: AppbarImage1(
            imagePath: ImageConstant.imgHome1,
            margin: getMargin(left: 19, top: 10, bottom: 13),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: enUs["lbl_notifcations"]!,
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomSearchBar(
                controller: searchController,
                onClear: () {
                  searchController.clear();
                },
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  // Add your notification items here
                  NotificationItem(
                    profileImage: ImageConstant.imgEnvelope3,
                    title: "Notification 1",
                    notificationText: "This is the first notification.",
                    time: "10:30 AM",
                  ),
                  NotificationItem(
                    profileImage: ImageConstant.imgAge1,
                    title: "Notification 2",
                    notificationText: "This is the second notification.",
                    time: "11:45 AM",
                  ),
                  NotificationItem(
                    profileImage: ImageConstant.imgCamera,
                    title: "Notification 3",
                    notificationText: "This is the third notification.",
                    time: "1:20 PM",
                  ),
                  NotificationItem(
                    profileImage: ImageConstant.imgEnvelope3,
                    title: "Notification 1",
                    notificationText: "This is the first notification.",
                    time: "10:30 AM",
                  ),
                  NotificationItem(
                    profileImage: ImageConstant.imgCamera,
                    title: "Notification 3",
                    notificationText: "This is the third notification.",
                    time: "1:20 PM",
                  ),
                  NotificationItem(
                    profileImage: ImageConstant.imgArrowsmallright,
                    title: "Notification 2",
                    notificationText: "This is the second notification.",
                    time: "11:45 AM",
                  ),
                  NotificationItem(
                    profileImage: ImageConstant.imgBookmark1,
                    title: "Notification 2",
                    notificationText: "This is the second notification.",
                    time: "11:45 AM",
                  ),
                  NotificationItem(
                    profileImage: ImageConstant.imgImage1,
                    title: "Notification 2",
                    notificationText: "This is the second notification.",
                    time: "11:45 AM",
                  ),
                  // Add more notifications as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatefulWidget {
  final String profileImage;
  final String title;
  final String notificationText;
  final String time;

  NotificationItem({
    required this.profileImage,
    required this.title,
    required this.notificationText,
    required this.time,
  });

  @override
  _NotificationItemState createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  bool isUnread = true;

  @override
  void initState() {
    super.initState();
  }

  void markAsRead() {
    setState(() {
      isUnread = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isUnread) {
          markAsRead();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.profileImage),
                      radius: 25,
                    ),
                  ),
                  if (isUnread) // Show red dot for unread messages
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                ],
              ),
              // Notification Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.notificationText,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              // Time
              Text(
                widget.time,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
