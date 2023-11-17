import 'package:flutter/material.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../main.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds before navigating to the main screen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MyApp(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return

      SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primaryContainer,
              body:  Center(
                child: CustomImageView(
                    imagePath: ImageConstant.imgWhatsappimage20230815,
                    height: getVerticalSize(170),
                    width: getHorizontalSize(224),
                    alignment: Alignment.topCenter,
                    margin: getMargin(top: 314)),
              ),
          ));
  }
}
