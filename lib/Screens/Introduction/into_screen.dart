import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_sports_app/Utils/pref_utils.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../category_create_account.dart'; // Import your main.dart or the destination screen file

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late List<IntroData> splashDataList;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    splashDataList = [
      IntroData(
        title: enUs["lbl_player"]!,
        message: enUs["msg_lorem_ipsum_dolor"]!,
        imagePath: ImageConstant.imgGroup994,
      ),
      IntroData(
        title: enUs["lbl_coach"]!,
        message: enUs["msg_lorem_ipsum_dolor"]!,
        imagePath: ImageConstant.img2b091d39c676d6e,
      ),
      IntroData(
        title: "Club",
        message: enUs["msg_lorem_ipsum_dolor"]!,
        imagePath: ImageConstant.imgGroup997,
      ),
    ];

    // Start timer to switch between data every 3 seconds
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentIndex < splashDataList.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      //if (mounted) return;
      setState(() {});
    });

    // Add a delay of 5 seconds before navigating to the main screen
    Future.delayed(Duration(seconds: 20), () {
      navigateToMainScreen();
    });
  }

  void navigateToMainScreen() {
    PrefUtils().setShowInro(true);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const CategorySelectionScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double containerHeight = MediaQuery.of(context).size.height;
    final double containerWidth = MediaQuery.of(context).size.width;

    return Container(
      height: containerHeight,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Container(
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            image: DecorationImage(
              image: AssetImage(splashDataList[currentIndex].imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            height: containerHeight,
            width: containerWidth,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: getVerticalSize(500),
                    margin: getMargin(
                      left: getHorizontalSize(14),
                      right: getHorizontalSize(14),
                      bottom: getVerticalSize(142),
                    ),
                    padding: getPadding(
                      left: getHorizontalSize(20),
                      top: getVerticalSize(5),
                      right: getHorizontalSize(20),
                      bottom: getVerticalSize(31),
                    ),
                    decoration: AppDecoration.gradientBlackDToBlackD,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(top: 0),
                          child: Text(
                            splashDataList[currentIndex].title,
                            style: CustomTextStyles.jostPrimaryContainer,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(311),
                          margin: getMargin(
                            left: getHorizontalSize(13),
                            top: getVerticalSize(31),
                          ),
                          child: Text(
                            splashDataList[currentIndex].message,
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .titleMediumPoppinsPrimaryContainerMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsappimage20230815,
                  height: getVerticalSize(128),
                  alignment: Alignment.topCenter,
                  margin: getMargin(top: getVerticalSize(50)),
                ),
                // Skip button
                Positioned(
                  top: getVerticalSize(40),
                  right: getHorizontalSize(20),
                  child: TextButton(
                    onPressed: () {
                      navigateToMainScreen();
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IntroData {
  final String title;
  final String message;
  final String imagePath;

  IntroData({
    required this.title,
    required this.message,
    required this.imagePath,
  });
}

// void main() {
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: IntroScreen(),
//   ));
// }
