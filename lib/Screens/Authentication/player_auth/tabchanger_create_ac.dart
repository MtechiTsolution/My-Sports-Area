// import 'package:flutter/material.dart';
// import 'package:my_sports_app/Screens/CreateAccount/widgets/skill.dart';
// import 'package:my_sports_app/Screens/CreateAccount/widgets/Achievements.dart';
// import 'package:my_sports_app/Utils/them.dart';
// import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
//
// import '../../../Utils/size_utils.dart';
// import '../../../theme/app_decoration.dart';
// import '../../../theme/theme_helper.dart';
//
// class InformationPerformance extends StatefulWidget {
//   const InformationPerformance({Key? key});
//
//   @override
//   _InformationPerformanceState createState() => _InformationPerformanceState();
// }
//
// class _InformationPerformanceState extends State<InformationPerformance> {
//   @override
//   Widget build(BuildContext context) {
//     bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Theme.of(context).colorScheme.background, // Updated line
//         body: DefaultTabController(
//           initialIndex: 0,
//           length: 2, // Number of tabs
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width,
//             child: Container(
//
//               decoration: AppDecoration.outlineBlack.copyWith(
//                 color: isDarkMode ? Colors.grey[800] : Colors.white,
//                 borderRadius: BorderRadiusStyle.roundedBorder8,
//               ),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: getPadding(
//                         top: 23,
//                       ),
//                       child: Text(
//                         enUs["lbl_information"]!,
//                         style: theme.textTheme.headlineMedium,
//                       ),
//                     ),
//                     Center(
//                       child: Container(
//                         width: MediaQuery.of(context).size.width *0.9,
//
//                         margin: getMargin(
//                           top: 61,
//
//                         ),
//                         decoration: BoxDecoration(
//
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(
//                             getHorizontalSize(10),
//                           ),
//                         ),
//                         child:
//                         TabBar(
//
//                           isScrollable: false,
//                           labelColor: AppColors.pink,
//                           labelStyle: TextStyle(
//                             fontSize: getFontSize(20),
//                             fontFamily: 'Inter',
//                             fontWeight: FontWeight.w600,
//                           ),
//                           unselectedLabelColor: AppColors.black,
//                          // unselectedLabelStyle: labelText.Lebl_Text(isDarkMode),
//                           indicator: BoxDecoration(
//                             color: Colors.transparent,
//                             // borderRadius: BorderRadius.circular(
//                             //   getHorizontalSize(20),
//                             // ),
//                           ),
//
//
//                           tabs: [
//                             Tab(
//                               child: Container(
//                                 width: MediaQuery.of(context).size.width * 0.5,
//                                 child: Text(
//                                   enUs["lbl_skill"]!,
//                                   textAlign: TextAlign.center,
//                                   //style: labelText.Lebl_Text(isDarkMode),
//                                 ),
//                               ),
//                             ),
//                             Tab(
//                               child: Container(
//
//                                 padding: EdgeInsets.symmetric(horizontal: 10),
//                                 width: MediaQuery.of(context).size.width * 0.5,
//                                 child: Text(
//                                   enUs["lbl_work"]!,
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height ,
//                       width: MediaQuery.of(context).size.width ,
//                       child: TabBarView(
//                         children: [
//                           Skill(),
//                           TabWork(),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//

import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/CreateAccount/widgets/skill.dart';
import 'package:my_sports_app/Screens/CreateAccount/widgets/Achievements.dart';
import 'package:my_sports_app/Utils/them.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../../Utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/theme_helper.dart';
import '../../CreateAccount/My_interests.dart';

class Tab_changer_acc extends StatefulWidget {
  const Tab_changer_acc({Key? key}) : super(key: key);

  @override
  _Tab_changer_accState createState() => _Tab_changer_accState();
}

class _Tab_changer_accState extends State<Tab_changer_acc>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: DefaultTabController(
          initialIndex: 0,
          length: 4, // Number of tabs
          child: SizedBox.expand(
            child: Container(
              decoration: AppDecoration.outlineBlack.copyWith(
                color: isDarkMode ? Colors.grey[800] : Colors.white,
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 20,
                    ),
                    child: Text(
                      enUs["lbl_information"]!,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    margin: getMargin(
                      top: 21,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(10),
                      ),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: false,
                      labelColor: AppColors.pink,
                      labelStyle: TextStyle(
                        fontSize: getFontSize(20),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelColor: AppColors.black,
                      indicator: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              enUs["lbl_skill"]!,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              enUs["lbl_work"]!,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Tab( // New tab for Achievements
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Text(
                              enUs["lbl_achievements"]!,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Tab( // New tab for Injuries
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Text(
                              enUs["lbl_injuries"]!,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Skill(),
                          Achievements(),

                          Container(child: Text("Achievements Content")),
                          Container(child: Text("Injuries Content")),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_tabController.index < _tabController.length - 1) {
                          // Move to the next tab
                          _tabController.animateTo(_tabController.index + 1);
                        } else {
                          // Navigate to the next screen (Interest.dart)
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => My_Interests(),
                            ),
                          );
                        }
                      },
                      child: Text('Next'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.pink,
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



