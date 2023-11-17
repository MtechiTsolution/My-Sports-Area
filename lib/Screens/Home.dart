import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_sports_app/Utils/image_constant.dart';

import '../Utils/size_utils.dart';
import '../widgets/custom_image_view.dart';
import 'Entertainment/entertainment.dart';

import 'Messaging/messaging.dart';
import 'News_and_Score/news_scorre.dart';
import 'Notifications/notification.dart';
import 'Offers_and_applications/offers_and_application.dart';
import 'Post_Upload/upload_post_one.dart';
import 'Relationship/relationship.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Sports',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  double bottomMargin = 50.0; // Initial margin, set to 50 as default

  final List<Widget> _screens = [
    // HomeScreen(),
    NewsScreen(),
    MessagingScreen(),
    Offer_and_Application(),
    RelationshipScreen(),
    NotificationsScreen(),
    EntertainmentScreen(),
  ];

  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();

    var keyboardVisibilityController = KeyboardVisibilityController();
    // Query
    print(
        'Keyboard visibility direct query: ${keyboardVisibilityController.isVisible}');

    // Subscribe
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        bottomMargin = visible
            ? 40.0
            : 55.0; // Update the margin based on keyboard visibility
      });
    });
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          _screens[_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          // Handle the custom button tap here
          // onTapImgImage();
        },
        child: Container(
          width: getHorizontalSize(144),
          height: getVerticalSize(34),
          margin:
              EdgeInsets.only(bottom: bottomMargin), // Use the dynamic margin
          child: Center(
            child: CustomImageView(
              svgPath: ImageConstant.imgGroup237816,
              height: getVerticalSize(34),
              // color: Colors.pink,
              width: getHorizontalSize(144),
              onTap: () {
                onTapPost();
              },
            ),
          ),
        ),
      ),
    );
  }

  void deselectAllTabs() {
    setState(() {
      _currentIndex = -1;
    });
  }


  void onTapPost() {

    Navigator.push(context, MaterialPageRoute(builder: (context)=>upload_post_one()));

  }




}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      onTap: onTap,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            ImageConstant.imgGlobe25x26, // Replace with your PNG file path
            width: 24, // Set the width and height as per your requirements
            height: 24,
            color: currentIndex == 0 ? Colors.pink : Colors.black,
          ),
          label: 'News & Score',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/Vector.png', // Replace with your PNG file path
            width: 24, // Set the width and height as per your requirements
            height: 24,
            color: currentIndex == 1 ? Colors.pink : Colors.black,
          ),
          label: 'Messaging',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            ImageConstant.imgFile, // Replace with your SVG file path
            width: 24, // Set the width and height as per your requirements
            height: 24,
            color: currentIndex == 2 ? Colors.pink : Colors.black,
          ),
          label: 'Offers & Applications',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            ImageConstant.imgComponent14, // Replace with your SVG file path
            width: 24, // Set the width and height as per your requirements
            height: 24,
            color: currentIndex == 3 ? Colors.pink : Colors.black,
          ),
          label: 'Relationship',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            ImageConstant.imgLightbulb, // Replace with your SVG file path
            width: 24, // Set the width and height as per your requirements
            height: 24,
            color: currentIndex == 4 ? Colors.pink : Colors.black,
          ),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            ImageConstant.imgTicket, // Replace with your SVG file path
            width: 24, // Set the width and height as per your requirements
            height: 24,
            color: currentIndex == 5 ? Colors.pink : Colors.black,
          ),
          label: 'Entertainment',
        ),
      ],
    );
  }
}

class CustomShapedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  CustomShapedButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.06),
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.0),
                  spreadRadius: 1,
                  blurRadius: 0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Icon(
              Icons.add,
              color: Colors.pink,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}

//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Sports',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int _currentIndex = 0;
//   double bottomMargin = 50.0; // Initial margin, set to 50 as default
//
//   final List<Widget> _screens = [
//     // HomeScreen(),
//     NewsScreen(),
//     MessagingScreen(),
//     Offer_and_Application(),
//     RelationshipScreen(),
//     NotificationsScreen(),
//     EntertainmentScreen(),
//   ];
//
//   late StreamSubscription<bool> keyboardSubscription;
//
//   @override
//   void initState() {
//     super.initState();
//
//     var keyboardVisibilityController = KeyboardVisibilityController();
//     // Query
//     print('Keyboard visibility direct query: ${keyboardVisibilityController.isVisible}');
//
//     // Subscribe
//     keyboardSubscription = keyboardVisibilityController.onChange.listen((bool visible) {
//       setState(() {
//         bottomMargin = visible ? 40.0 : 50.0; // Update the margin based on keyboard visibility
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     keyboardSubscription.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: Stack(
//         children: [
//           _screens[_currentIndex],
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: CustomBottomNavigationBar(
//               currentIndex: _currentIndex,
//               onTap: (index) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: GestureDetector(
//         onTap: () {
//           // Handle the custom button tap here
//           // onTapImgImage();
//         },
//         child: Container(
//           width: getHorizontalSize(144),
//           height: getVerticalSize(34),
//           margin: EdgeInsets.only(bottom: bottomMargin), // Use the dynamic margin
//           child: Center(
//             child: CustomImageView(
//               svgPath: ImageConstant.imgGroup237816,
//               height: getVerticalSize(34),
//               // color: Colors.pink,
//               width: getHorizontalSize(144),
//               onTap: () {
//                 // onTapImgImage();
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void deselectAllTabs() {
//     setState(() {
//       _currentIndex = -1;
//     });
//   }
// }
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   final int currentIndex;
//   final ValueChanged<int> onTap;
//
//   CustomBottomNavigationBar({
//     required this.currentIndex,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: currentIndex,
//       onTap: onTap,
//       unselectedItemColor: Colors.black,
//       selectedItemColor: Colors.pink,
//       items: [
//         // BottomNavigationBarItems...
//       ],
//     );
//   }
// }
//
// // CustomShapedButton and other widgets...
