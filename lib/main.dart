import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Home.dart';
import 'package:my_sports_app/Screens/category_create_account.dart';
import 'package:my_sports_app/Screens/Introduction/into_screen.dart';
import 'package:my_sports_app/Utils/pref_utils.dart';
import 'package:my_sports_app/providers/ResendTimer.dart';
import 'package:my_sports_app/providers/UserProvider.dart';
import 'package:provider/provider.dart';

import 'Utils/them.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefUtils().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<UserProvider>(create: (_) => UserProvider()),
        ListenableProvider<ResendTimer>(create: (_) => ResendTimer()),
      ],
      child: MaterialApp(
        theme: AppTheme.getTheme(false), // Light mode
        darkTheme: AppTheme.getTheme(true), // Dark mode
        themeMode: ThemeMode.system,

        debugShowCheckedModeBanner: false,
        home: SplashScreenDelay(), // Start with a simple splash screen delay
      ),
    );
  }
}

class SplashScreenDelay extends StatefulWidget {
  @override
  _SplashScreenDelayState createState() => _SplashScreenDelayState();
}

class _SplashScreenDelayState extends State<SplashScreenDelay> {
  @override
  void initState() {
    super.initState();

    // Add a delay of 3 seconds before navigating to the splash screen
    Future.delayed(Duration(seconds: 3), () {
      navigateToSplashScreen();
    });
  }

  void navigateToSplashScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => PrefUtils().checklogin()
            ? Home()
            : PrefUtils().getShowIntro()
                ? const CategorySelectionScreen()
                : const IntroScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'assets/images/logonew.png', // Replace with the actual path to your logo
          height: MediaQuery.of(context).size.height *
              0.5, // Adjust the height as needed
          width: MediaQuery.of(context).size.width *
              0.5, // Adjust the width as needed
        ),
      ),
    );
  }
}
