// import 'package:flutter/material.dart';
//
// import '../../Utils/image_constant.dart';
// import '../../Utils/size_utils.dart';
// import '../../localization/en_us/en_us_translations.dart';
// import '../../theme/app_decoration.dart';
// import '../../theme/custom_button_style.dart';
// import '../../theme/custom_text_style.dart';
// import '../../theme/theme_helper.dart';
// import '../../widgets/app_bar/appbar_image_1.dart';
// import '../../widgets/app_bar/appbar_subtitle.dart';
// import '../../widgets/app_bar/custom_app_bar.dart';
// import '../../widgets/custom_elevated_button.dart';
//
// class Score_result extends StatelessWidget {
//   const Score_result({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//    appBar:  CustomAppBar(
//
//      leadingWidth: getHorizontalSize(42),
//      leading: InkWell(
//          onTap: (){Navigator.pop(context);
//            },
//          child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
//      centerTitle: true,
//      title: AppbarSubtitle(
//        text: "Score and Results",
//        margin: getMargin(top: 10, bottom: 5),
//      ),
//      styleType: Style.bgShadow,
//    ),
//         backgroundColor: theme.colorScheme.primaryContainer,
//         body: SizedBox(
//             width: mediaQueryData.size.width,
//             child: SingleChildScrollView(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                   Padding(
//                       padding: getPadding(left: 14, top: 20, right: 14),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(
//                                 padding: getPadding(
//                                     left: 23, top: 14, right: 23, bottom: 14),
//                                 decoration: AppDecoration.outlineBlack900013
//                                     .copyWith(
//                                         borderRadius:
//                                             BorderRadiusStyle.roundedBorder15),
//                                 child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Align(
//                                           alignment: Alignment.centerRight,
//                                           child: Padding(
//                                               padding: getPadding(top: 4),
//                                               child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.end,
//                                                   children: [
//                                                     Text(enUs["lbl_football2"]!,
//                                                         style: theme.textTheme
//                                                             .titleLarge),
//                                                     Spacer(),
//                                                     Padding(
//                                                         padding: getPadding(
//                                                             bottom: 5),
//                                                         child: Text(
//                                                             enUs["lbl_live3"]!,
//                                                             style: CustomTextStyles
//                                                                 .titleSmallInterRedA700)),
//                                                     Container(
//                                                         height: getSize(5),
//                                                         width: getSize(5),
//                                                         margin: getMargin(
//                                                             left: 2,
//                                                             top: 9,
//                                                             bottom: 10),
//                                                         decoration: BoxDecoration(
//                                                             color: appTheme
//                                                                 .redA700,
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         getHorizontalSize(
//                                                                             2))))
//                                                   ]))),
//                                       Padding(
//                                           padding: getPadding(
//                                               left: 3, top: 12, right: 5),
//                                           child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Column(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               left: 6),
//                                                           child: Text(
//                                                               enUs[
//                                                                   "lbl_amateur"]!,
//                                                               style: theme
//                                                                   .textTheme
//                                                                   .labelLarge)),
//                                                       Container(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   86),
//                                                           width:
//                                                               getHorizontalSize(
//                                                                   214),
//                                                           margin:
//                                                               getMargin(top: 1),
//                                                           child: Stack(
//                                                               alignment:
//                                                                   Alignment
//                                                                       .center,
//                                                               children: [
//                                                                 Align(
//                                                                     alignment:
//                                                                         Alignment
//                                                                             .topRight,
//                                                                     child: Padding(
//                                                                         padding: getPadding(
//                                                                             top:
//                                                                                 12,
//                                                                             right:
//                                                                                 20),
//                                                                         child: Text(
//                                                                             enUs[
//                                                                                 "lbl_6"]!,
//                                                                             style:
//                                                                                 CustomTextStyles.bodyMediumLight))),
//                                                                 Align(
//                                                                     alignment:
//                                                                         Alignment
//                                                                             .center,
//                                                                     child: GestureDetector(
//                                                                         onTap: () {
//                                                                           // onTapColumncampfc();
//                                                                         },
//                                                                         child: Container(
//                                                                             padding: getPadding(left: 14, top: 13, right: 14, bottom: 13),
//                                                                             decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
//                                                                             child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
//                                                                               Row(children: [
//                                                                                 Text(enUs["lbl_camp_fc"]!, style: CustomTextStyles.titleSmallInter15),
//                                                                                 Padding(padding: getPadding(left: 13), child: Text(enUs["lbl_win"]!, style: CustomTextStyles.labelLargeKrubSecondaryContainer))
//                                                                               ]),
//                                                                               Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 12), child: SizedBox(width: getHorizontalSize(159), child: Divider(color: appTheme.gray600)))),
//                                                                               Container(
//                                                                                   width: getHorizontalSize(178),
//                                                                                   margin: getMargin(top: 5, right: 8),
//                                                                                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                                                                                     Padding(padding: getPadding(top: 1), child: Text(enUs["lbl_apt"]!, style: CustomTextStyles.bodyMedium15)),
//                                                                                     Text(enUs["lbl_2"]!, style: CustomTextStyles.bodyMediumLight)
//                                                                                   ]))
//                                                                             ]))))
//                                                               ]))
//                                                     ]),
//                                                 Padding(
//                                                     padding:
//                                                         getPadding(bottom: 7),
//                                                     child: Column(
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .start,
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         children: [
//                                                           Text(
//                                                               enUs[
//                                                                   "lbl_start_2_00am"]!,
//                                                               style: CustomTextStyles
//                                                                   .bodySmallInter12_1),
//                                                           Align(
//                                                               alignment:
//                                                                   Alignment
//                                                                       .center,
//                                                               child: Padding(
//                                                                   padding:
//                                                                       getPadding(
//                                                                           top:
//                                                                               5),
//                                                                   child: Row(
//                                                                       mainAxisAlignment:
//                                                                           MainAxisAlignment
//                                                                               .center,
//                                                                       children: [
//                                                                         CustomElevatedButton(
//                                                                             width:
//                                                                                 getHorizontalSize(24),
//                                                                             text: enUs["lbl_0"]!,
//                                                                             buttonStyle: CustomButtonStyles.fillPrimaryContainer,
//                                                                             onTap: () {
//                                                                               // onTapZero();
//                                                                             }),
//                                                                         CustomElevatedButton(
//                                                                             width:
//                                                                                 getHorizontalSize(24),
//                                                                             text: enUs["lbl_1"]!,
//                                                                             margin: getMargin(left: 7),
//                                                                             buttonStyle: CustomButtonStyles.fillYellowA,
//                                                                             onTap: () {
//                                                                               // onTapOne();
//                                                                             }),
//                                                                         CustomElevatedButton(
//                                                                             width:
//                                                                                 getHorizontalSize(24),
//                                                                             text: enUs["lbl_3"]!,
//                                                                             margin: getMargin(left: 7),
//                                                                             buttonStyle: CustomButtonStyles.fillRedA,
//                                                                             onTap: () {
//                                                                               // onTapThree();
//                                                                             })
//                                                                       ]))),
//                                                           Align(
//                                                               alignment:
//                                                                   Alignment
//                                                                       .center,
//                                                               child: Padding(
//                                                                   padding:
//                                                                       getPadding(
//                                                                           top:
//                                                                               9),
//                                                                   child: Row(
//                                                                       mainAxisAlignment:
//                                                                           MainAxisAlignment
//                                                                               .center,
//                                                                       children: [
//                                                                         CustomElevatedButton(
//                                                                             width:
//                                                                                 getHorizontalSize(24),
//                                                                             text: enUs["lbl_2"]!,
//                                                                             buttonStyle: CustomButtonStyles.fillPrimaryContainer,
//                                                                             onTap: () {
//                                                                               // onTapTwo();
//                                                                             }),
//                                                                         Container(
//                                                                             margin:
//                                                                                 getMargin(left: 7),
//                                                                             padding: getPadding(left: 7, top: 6, right: 7, bottom: 6),
//                                                                             decoration: AppDecoration.fillYellowA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
//                                                                             child: Text(enUs["lbl_5"]!, style: CustomTextStyles.titleSmallInterMedium15)),
//                                                                         Container(
//                                                                             margin:
//                                                                                 getMargin(left: 7),
//                                                                             padding: getPadding(left: 8, top: 6, right: 8, bottom: 6),
//                                                                             decoration: AppDecoration.fillRedA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
//                                                                             child: Text(enUs["lbl_1"]!, style: CustomTextStyles.titleSmallInterMedium15))
//                                                                       ])))
//                                                         ]))
//                                               ])),
//                                     ])),
//
//
//                           ]))
//                 ]))));
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Entertainment/paly_card.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class SportsCard {
  final String title;
  final int score;
  final int pts;
  final int tier;

  SportsCard(
      {required this.title,
      required this.score,
      required this.pts,
      required this.tier});
}

class Score_result extends StatefulWidget {
  @override
  _Score_resultState createState() => _Score_resultState();
}

class _Score_resultState extends State<Score_result> {
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
      tier: 2,
    ),
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
                  List<String> tabs = [
                    "Hockey",
                    "Football",
                    "Volleyball",
                    "Cricket",
                    "Badminton"
                  ];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () => _onTabSelected(index),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: _selectedTabIndex == index
                              ? Colors.white
                              : Colors.black,
                          backgroundColor: _selectedTabIndex == index
                              ? Colors.pink
                              : Colors.white,
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
            child: selectedTabCards.isNotEmpty
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(bottom: 10),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, // 2 cards in a row
                        childAspectRatio:
                            2, // You can adjust the aspect ratio according to your card design
                      ),
                      itemCount: selectedTabCards.length,
                      itemBuilder: (context, index) {
                        SportsCard card = selectedTabCards[index];
                        return Padding(
                            padding: getPadding(
                                left: 10, top: 10, right: 10, bottom: 10),
                            child: Container(
                                padding: getPadding(all: 8),
                                decoration: AppDecoration.outlineBlack900013
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(card.title,
                                                    style: theme
                                                        .textTheme.titleLarge),
                                                Spacer(),
                                                Text(enUs["lbl_live3"]!,
                                                    style: CustomTextStyles
                                                        .titleSmallInterRedA700),
                                                Container(
                                                    height: getSize(5),
                                                    width: getSize(5),
                                                    margin: getMargin(
                                                        left: 2,
                                                        top: 9,
                                                        bottom: 10),
                                                    decoration: BoxDecoration(
                                                        color: appTheme.redA700,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    2))))
                                              ])),
                                      Padding(
                                          padding: getPadding(
                                              left: 3, top: 10, right: 5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 6),
                                                          child: Text(
                                                              enUs[
                                                                  "lbl_amateur"]!,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Container(
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                12,
                                                                            right:
                                                                                20),
                                                                        child: Text(
                                                                            enUs[
                                                                                "lbl_6"]!,
                                                                            style:
                                                                                CustomTextStyles.bodyMediumLight))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          // onTapColumncampfc();
                                                                        },
                                                                        child: Container(
                                                                            padding: getPadding(left: 14, top: 13, right: 14, bottom: 13),
                                                                            decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Row(children: [
                                                                                Text(enUs["lbl_camp_fc"]!, style: CustomTextStyles.titleSmallInter15),
                                                                                Padding(padding: getPadding(left: 13), child: Text(enUs["lbl_win"]!, style: CustomTextStyles.labelLargeKrubSecondaryContainer))
                                                                              ]),
                                                                              Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 12), child: SizedBox(width: getHorizontalSize(159), child: Divider(color: appTheme.gray600)))),
                                                                              Container(
                                                                                  width: getHorizontalSize(178),
                                                                                  margin: getMargin(top: 5, right: 8),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                    Padding(padding: getPadding(top: 1), child: Text(enUs["lbl_apt"]!, style: CustomTextStyles.bodyMedium15)),
                                                                                    Text(enUs["lbl_2"]!, style: CustomTextStyles.bodyMediumLight)
                                                                                  ]))
                                                                            ]))))
                                                              ]))
                                                    ]),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 7),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              enUs[
                                                                  "lbl_start_2_00am"]!,
                                                              style: CustomTextStyles
                                                                  .bodySmallInter12_1),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                            margin:
                                                                                getMargin(left: 7),
                                                                            padding: getPadding(left: 7, top: 6, right: 7, bottom: 6),
                                                                            decoration: AppDecoration.fillYellowA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Text(enUs["lbl_1"]!, style: CustomTextStyles.titleSmallInterMedium15)),
                                                                        Container(
                                                                            margin:
                                                                                getMargin(left: 7),
                                                                            padding: getPadding(left: 7, top: 6, right: 7, bottom: 6),
                                                                            decoration: AppDecoration.fillRedA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Text(enUs["lbl_5"]!, style: CustomTextStyles.titleSmallInterMedium15)),
                                                                        Container(
                                                                            margin:
                                                                                getMargin(left: 7),
                                                                            padding: getPadding(left: 8, top: 6, right: 8, bottom: 6),
                                                                            decoration: AppDecoration.fillRedA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Text(enUs["lbl_1"]!, style: CustomTextStyles.titleSmallInterMedium15))
                                                                      ]))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              9),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                            margin:
                                                                                getMargin(left: 7),
                                                                            padding: getPadding(left: 7, top: 6, right: 7, bottom: 6),
                                                                            decoration: AppDecoration.fillwhite.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Text(enUs["lbl_1"]!, style: CustomTextStyles.titleSmallInterMedium15)),
                                                                        Container(
                                                                            margin:
                                                                                getMargin(left: 7),
                                                                            padding: getPadding(left: 7, top: 6, right: 7, bottom: 6),
                                                                            decoration: AppDecoration.fillYellowA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Text(enUs["lbl_5"]!, style: CustomTextStyles.titleSmallInterMedium15)),
                                                                        Container(
                                                                            margin:
                                                                                getMargin(left: 7),
                                                                            padding: getPadding(left: 8, top: 6, right: 8, bottom: 6),
                                                                            decoration: AppDecoration.fillRedA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Text(enUs["lbl_1"]!, style: CustomTextStyles.titleSmallInterMedium15))
                                                                      ])))
                                                        ]))
                                              ])),
                                    ])));

                        //data ...............................................................................
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
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink),
                                  ),
                                ),
                                SizedBox(height: 18),
                                Text(
                                  "Score: ${card.score}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  "PTS: ${card.pts}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  "Tier: ${card.tier}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Play_card()));
                                        // Handle play button click
                                      },
                                      icon: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 18.0),
                                        child: Icon(Icons.play_arrow),
                                      ),
                                      label: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 18.0),
                                        child: Text("Play"),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.pink,
                                        // Background color
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                20)), // Rounded corners
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
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Score_result(),
  ));
}
