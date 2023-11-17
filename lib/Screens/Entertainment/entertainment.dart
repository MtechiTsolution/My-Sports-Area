import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Entertainment/paly_card.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

//
// import 'package:flutter/material.dart';
//
// class EntertainmentScreen extends StatefulWidget {
//   @override
//   _EntertainmentScreenState createState() => _EntertainmentScreenState();
// }
//
// class _EntertainmentScreenState extends State<EntertainmentScreen> {
//   int _selectedTabIndex = 0;
//
//   void _onTabSelected(int index) {
//     setState(() {
//       _selectedTabIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: theme.colorScheme.primaryContainer,
//       appBar: CustomAppBar(
//         leadingWidth: getHorizontalSize(42),
//         leading: AppbarImage1(
//           imagePath: ImageConstant.imgHome1,
//           margin: getMargin(left: 19, top: 10, bottom: 13),
//         ),
//         centerTitle: true,
//         title: AppbarSubtitle(
//           text: "Entertainment",
//           margin: getMargin(top: 10, bottom: 8),
//         ),
//
//         styleType: Style.bgShadow,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: getPadding(left: 23, top: 24, right: 23),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   enUs["lbl_dadi_benalbuo"]!,
//                   style: theme.textTheme.titleLarge,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 40,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 5,
//               itemBuilder: (context, index) {
//                 List<String> tabs = ["Football", "Hockey", "Volleyball", "Cricket", "Badminton"];
//                 return Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 8),
//                   child: ElevatedButton(
//                     onPressed: () => _onTabSelected(index),
//                     style: ElevatedButton.styleFrom(
//                       primary: _selectedTabIndex == index ? Colors.pink : Colors.white,
//                       onPrimary: _selectedTabIndex == index ? Colors.white : Colors.black,
//                     ),
//                     child: Text(
//                       tabs[index],
//                       style: TextStyle(fontSize: 14),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class SportsCard {
  final String title;
  final int score;
  final int pts;
  final int tier;

  SportsCard({required this.title, required this.score, required this.pts, required this.tier});
}

class EntertainmentScreen extends StatefulWidget {
  @override
  _EntertainmentScreenState createState() => _EntertainmentScreenState();
}

class _EntertainmentScreenState extends State<EntertainmentScreen> {
  int _selectedTabIndex = 0;

  List<SportsCard> hockeyCards = [


    SportsCard(
      title: "Hockey",
      score: 2500,
      pts: 7,
      tier: 2,
    ),
    SportsCard(
      title: "Hockey",
      score: 2500,
      pts: 7,
      tier: 2,
    ),
    SportsCard(
      title: "Hockey",
      score: 2500,
      pts: 7,
      tier: 2,
    ),
    SportsCard(
      title: "Hockey",
      score: 2500,
      pts: 7,
      tier: 2,),

  ];

  List<SportsCard> footballCards = [
    SportsCard(
      title: "Football",
      score: 89,
      pts: 7,
      tier: 2,
    ),
    SportsCard(
      title: "Football",
      score: 10,
      pts: 7,
      tier: 2,
    ),
    SportsCard(
      title: "Football",
      score: 33,
      pts: 17,
      tier: 1,
    ),
    SportsCard(
      title: "Football",
      score: 2500,
      pts: 7,
      tier: 2,
    ),
    SportsCard(
      title: "Football",
      score: 2500,
      pts: 7,
      tier: 2,
    ),
    SportsCard(
      title: "Football",
      score: 2500,
      pts: 7,
      tier: 2,
    ),
  ];

  List<SportsCard> getSelectedTabCards() {
    switch (_selectedTabIndex) {
      case 0:
        return hockeyCards;
      case 1:
        return footballCards;
      default:
        return [];
    }
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<SportsCard> selectedTabCards = getSelectedTabCards();

    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: CustomAppBar(
        leadingWidth: getHorizontalSize(42),
        leading: AppbarImage1(
          imagePath: ImageConstant.imgHome1,
          margin: getMargin(left: 19, top: 10, bottom: 13),
        ),
        centerTitle: true,
        title: AppbarSubtitle(
          text: "Entertainment",
          margin: getMargin(top: 10, bottom: 8),
        ),

        styleType: Style.bgShadow,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Number of tabs (Hockey and Football)
                itemBuilder: (context, index) {
                  List<String> tabs = ["Hockey", "Football","Volleyball", "Cricket", "Badminton"];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () => _onTabSelected(index),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: _selectedTabIndex == index ? Colors.white : Colors.black,
                          backgroundColor: _selectedTabIndex == index ? Colors.pink : Colors.white,
                        ),
                        child: Text(
                          tabs[index],
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(enUs["lbl_dadi_benalbuo"]!,
                style: theme.textTheme.titleLarge),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20,bottom: 0),
              child: selectedTabCards.isNotEmpty
                  ? Container(
                margin: EdgeInsets.only(bottom: 60),
                    child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 cards in a row
                    childAspectRatio: 0.8, // You can adjust the aspect ratio according to your card design
                ),
                itemCount: selectedTabCards.length,
                itemBuilder: (context, index) {
                    SportsCard card = selectedTabCards[index];
                    return
                      Card(
                        color: Colors.white,
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  card.title,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.pink),
                                ),
                              ),
                              SizedBox(height: 18),
                              Text(
                                "Score: ${card.score}",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                              Text(
                                "PTS: ${card.pts}",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                              Text(
                                "Tier: ${card.tier}",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                              Expanded(
                                child: Container(

                                  alignment: Alignment.bottomCenter,
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Play_card()));
                                      // Handle play button click
                                    },
                                    icon: Padding(
                                      padding: const EdgeInsets.only(left: 18.0),
                                      child: Icon(Icons.play_arrow),
                                    ),
                                    label: Padding(
                                      padding: const EdgeInsets.only(right: 18.0),
                                      child: Text("Play"),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.pink, // Background color
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Rounded corners
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );

                },
              ),
                  )
                  : Center(
                     child: Text("No cards available."),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EntertainmentScreen(),
  ));
}



