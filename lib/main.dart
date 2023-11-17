import 'package:flutter/material.dart';
import 'package:introduction_slider/source/presentation/pages/introduction_slider.dart';
import 'package:introduction_slider/source/presentation/widgets/buttons.dart';
import 'package:introduction_slider/source/presentation/widgets/dot_indicator.dart';
import 'package:introduction_slider/source/presentation/widgets/introduction_slider_item.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
import 'package:my_sports_app/theme/app_decoration.dart';
import 'package:my_sports_app/theme/custom_text_style.dart';
import 'package:my_sports_app/theme/theme_helper.dart';
import 'package:my_sports_app/widgets/custom_image_view.dart';

import 'Screens/CreateAccount/category_create_account.dart';
import 'Screens/spalshScreen/club.dart';
import 'Screens/spalshScreen/coach.dart';
import 'Screens/spalshScreen/player.dart';
import 'Screens/spalshScreen/splash.dart';
import 'Utils/image_constant.dart';
import 'Utils/size_utils.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      dotIndicator: DotIndicator(
          selectedColor: Colors.white,
          unselectedColor: Colors.black.withOpacity(0.5),
          size: 8.0),
      items: [
        IntroductionSliderItem(
          title: Player(),
          backgroundColor: Colors.white,
        ),
        IntroductionSliderItem(
          // logo: FlutterLogo(),
          title: Coach(),
          backgroundColor: Colors.white,
        ),
        IntroductionSliderItem(
          title: Club(),
          backgroundColor: Colors.white,
        ),
      ],
      done: Done(
        child: Icon(
          Icons.done,
          color: Colors.white,
        ),
        home: Category_selection_screen(),
      ),
      next: Next(
          child: Icon(
        Icons.arrow_forward,
        color: Colors.white,
      )),
      back: Back(
          child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      )),
    );
  }
}
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('Home Page')),
//     );
//   }
// }
