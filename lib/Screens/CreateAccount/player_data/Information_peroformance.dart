// import 'package:flutter/material.dart';
// import 'package:my_sports_app/Screens/CreateAccount/performance.dart';
// import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
//
// import '../../Utils/size_utils.dart';
// import '../../theme/app_decoration.dart';
// import '../../theme/theme_helper.dart';
//
// class Informatio_performance extends StatefulWidget {
//   const Informatio_performance({super.key});
//
//   @override
//   State<Informatio_performance> createState() => _Informatio_performanceState();
// }
//
// class _Informatio_performanceState extends State<Informatio_performance> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: theme.colorScheme.primaryContainer,
//         body: SizedBox(
//           width: double.maxFinite,
//           child: Container(
//             padding: getPadding(
//               left: 17,
//               top: 110,
//               right: 17,
//               bottom: 110,
//             ),
//             decoration: AppDecoration.outlineBlack.copyWith(
//               borderRadius: BorderRadiusStyle.roundedBorder8,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: getPadding(
//                     top: 13,
//                   ),
//                   child: Text(
//                     enUs["lbl_information"]!,
//                     style: theme.textTheme.headlineMedium,
//                   ),
//                 ),
//                 Container(
//                   height: getVerticalSize(39),
//                   width: getHorizontalSize(332),
//                   margin: getMargin(
//                     top: 61,
//                   ),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(
//                       getHorizontalSize(10),
//                     ),
//                   ),
//                   child: TabBar(
//                  //   controller: controller.tabviewController,
//                     isScrollable: true,
//                     labelColor: appTheme.gray50,
//                     labelStyle: TextStyle(
//                       fontSize: getFontSize(16),
//                       fontFamily: 'Inter',
//                       fontWeight: FontWeight.w600,
//                     ),
//                     unselectedLabelColor: appTheme.black90001,
//                     unselectedLabelStyle: TextStyle(
//                       fontSize: getFontSize(16),
//                       fontFamily: 'Inter',
//                       fontWeight: FontWeight.w600,
//                     ),
//                     indicator: BoxDecoration(
//                       color: theme.colorScheme.primary,
//                       borderRadius: BorderRadius.circular(
//                         getHorizontalSize(10),
//                       ),
//                     ),
//                     tabs: [
//                       Tab(
//                         child: Text(
//                           enUs["lbl_performance"]!,
//                         ),
//                       ),
//                       Tab(
//                         child: Text(
//                           enUs["lbl_work"]!,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: getVerticalSize(587),
//                   child: TabBarView(
//                   //  controller: controller.tabviewController,
//                     children: [
//                       TabPerformance(),
//                       TabPerformance()
//                       // AcountCreateFourPage(),
//                       // AcountCreateFourPage(),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/CreateAccount/widgets/performance.dart';
import 'package:my_sports_app/Screens/CreateAccount/widgets/work.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../../Utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/theme_helper.dart';

class Informatio_performance extends StatefulWidget {
  const Informatio_performance({Key? key});

  @override
  _Informatio_performanceState createState() => _Informatio_performanceState();
}

class _Informatio_performanceState extends State<Informatio_performance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: DefaultTabController(
          length: 2, // Number of tabs
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: getPadding(
                left: 17,
                top: 30,
                right: 17,
                bottom: 30,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 13,
                      ),
                      child: Text(
                        enUs["lbl_information"]!,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    Center( // Center the TabBar
                      child: Container(

                        width: MediaQuery.of(context).size.width*0.9, // Set a fixed width
                        margin: getMargin(
                          top: 61,
                          left: 2,
                          right: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(

                            getHorizontalSize(10),
                          ),
                        ),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: appTheme.gray50,
                          labelStyle: TextStyle(
                            fontSize: getFontSize(16),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                          unselectedLabelColor: appTheme.black90001,
                          unselectedLabelStyle: TextStyle(
                            fontSize: getFontSize(16),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                          indicator: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(10),
                            ),
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                     width: MediaQuery.of(context).size.width*0.4,
                                child: Text(
                                  enUs["lbl_skill"]!,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.4,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  enUs["lbl_work"]!,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.8,
                      child: TabBarView(
                        children: [
                          TabPerformance(), // Replace with your tab content
                          TabWork(), // Replace with your tab content
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
