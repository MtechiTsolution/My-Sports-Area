// import 'package:flutter/material.dart';
//
// import '../../Utils/image_constant.dart';
// import '../../Utils/size_utils.dart';
// import '../../main.dart';
// import '../../theme/theme_helper.dart';
// import '../../widgets/custom_image_view.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Add a delay of 3 seconds before navigating to the main screen
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => MyApp(),
//         ),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       SafeArea(
//           child: Scaffold(
//               backgroundColor: theme.colorScheme.primaryContainer,
//               body:  Center(
//                 child: CustomImageView(
//                     imagePath: ImageConstant.imgWhatsappimage20230815,
//                     height: getVerticalSize(170),
//                     width: getHorizontalSize(224),
//                     alignment: Alignment.topCenter,
//                     margin: getMargin(top: 314)),
//               ),
//           ));
//   }
// }
//
//


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../../main.dart'; // Import your main.dart or the destination screen file
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../../main.dart';
import '../CreateAccount/category_create_account.dart'; // Import your main.dart or the destination screen file

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late List<SplashData> splashDataList;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    splashDataList = [
      SplashData(
        title: enUs["lbl_player"]!,
        message: enUs["msg_lorem_ipsum_dolor"]!,
        imagePath: ImageConstant.imgGroup994,
      ),
      SplashData(
        title: enUs["lbl_coach"]!,
        message: enUs["msg_lorem_ipsum_dolor"]!,
        imagePath: ImageConstant.img2b091d39c676d6e,
      ),
      SplashData(
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
      setState(() {});
    });

    // Add a delay of 5 seconds before navigating to the main screen
    Future.delayed(Duration(seconds: 20), () {
      navigateToMainScreen();
    });
  }

  void navigateToMainScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => CategorySelectionScreen(),
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
                            style:
                            CustomTextStyles.titleMediumPoppinsPrimaryContainerMedium,
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

class SplashData {
  final String title;
  final String message;
  final String imagePath;

  SplashData({
    required this.title,
    required this.message,
    required this.imagePath,
  });
}

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
