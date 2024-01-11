import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Authentication/player_auth/Login.dart';
import 'package:my_sports_app/Screens/category_create_account.dart';
import 'package:my_sports_app/Utils/pref_utils.dart';
import 'package:my_sports_app/providers/UserProvider.dart';
import 'package:my_sports_app/widgets/ios_dialogue.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_6.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../Home.dart';
import '../HomeScreen/HomeScreen.dart';
import 'live_score_view.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar: CustomAppBar(
            leadingWidth: getHorizontalSize(52),
            leading: AppbarImage1(
                imagePath: ImageConstant.imgHome1,
                margin: getMargin(left: 29, top: 7, bottom: 8),
                onTap: () {
                  onTapHome(context);
                }),
            centerTitle: true,
            title: AppbarSubtitle(
                text: enUs["lbl_news_score"]!,
                margin: getMargin(top: 7, bottom: 3)),
            actions: [
              InkWell(
                onTap: () async {
                  showIosDialoge(context);
                  if (PrefUtils().checklogin()) {
                    PrefUtils().setlogin('');
                    await UserProvider().logoutUser(PrefUtils.token);
                  }
                  Navigator.of(context).pop();
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => CategorySelectionScreen()),
                    (route) => false,
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 0.0, right: 15, bottom: 15),
                  child: Image.asset(
                    ImageConstant.imglogo,
                    height: getVerticalSize(20),
                    width: getHorizontalSize(20),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
            styleType: Style.bgShadow),
        body: SizedBox(
            width: mediaQueryData.size.width,
            child: SingleChildScrollView(
                padding: getPadding(top: 19),
                child: SizedBox(
                    height: getVerticalSize(1561),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      // Align(
                      //     alignment: Alignment.topCenter,
                      //     child: Container(
                      //         height: getVerticalSize(30),
                      //         width: getHorizontalSize(340),
                      //         decoration: BoxDecoration(
                      //             color: appTheme.blueGray100,
                      //             borderRadius: BorderRadius.circular(
                      //                 getHorizontalSize(10))
                      //         ))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 21, top: 21),
                                    child: Text(enUs["lbl_good_morning"]!,
                                        style:
                                            CustomTextStyles.titleSmallInter)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(left: 21, top: 5),
                                        child: IntrinsicWidth(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                              Expanded(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            185),
                                                        width:
                                                            getHorizontalSize(
                                                                129),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle52,
                                                                  height:
                                                                      getVerticalSize(
                                                                          185),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          129),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              7)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  onTap: () {
                                                                    //onTapImgImage();
                                                                  }),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      padding: getPadding(
                                                                          all:
                                                                              10),
                                                                      decoration: AppDecoration
                                                                          .gradientBlueGrayToBlack
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder8),
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  149),
                                                                          child: Text(
                                                                              enUs["lbl_football2"]!,
                                                                              style: CustomTextStyles.labelMediumJostPrimaryContainer))))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(
                                                            185),
                                                        width:
                                                            getHorizontalSize(
                                                                131),
                                                        margin:
                                                            getMargin(left: 18),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle53,
                                                                  height:
                                                                      getVerticalSize(
                                                                          185),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          128),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              7)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      padding: getPadding(
                                                                          left:
                                                                              11,
                                                                          top:
                                                                              10,
                                                                          right:
                                                                              11,
                                                                          bottom:
                                                                              10),
                                                                      decoration: AppDecoration
                                                                          .gradientBlueGrayToBlack
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder8),
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  149),
                                                                          child: Text(
                                                                              enUs["lbl_basketball2"]!,
                                                                              style: CustomTextStyles.labelMediumJostPrimaryContainer))))
                                                            ]))
                                                  ])),
                                              Container(
                                                  height: getVerticalSize(185),
                                                  width: getHorizontalSize(128),
                                                  margin: getMargin(left: 15),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle54,
                                                            height:
                                                                getVerticalSize(
                                                                    185),
                                                            width:
                                                                getHorizontalSize(
                                                                    128),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        7)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        all:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .gradientBlueGrayToBlack
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                149),
                                                                    child: Text(
                                                                        enUs[
                                                                            "lbl_baseboll"]!,
                                                                        style: CustomTextStyles
                                                                            .labelMediumJostPrimaryContainer))))
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(185),
                                                  width: getHorizontalSize(128),
                                                  margin: getMargin(left: 20),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle55,
                                                            height:
                                                                getVerticalSize(
                                                                    185),
                                                            width:
                                                                getHorizontalSize(
                                                                    128),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        7)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        top: 10,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .gradientBlueGrayToBlack
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                151),
                                                                    child: Text(
                                                                        enUs[
                                                                            "lbl_badminton"]!,
                                                                        style: CustomTextStyles
                                                                            .labelMediumJostPrimaryContainer))))
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(185),
                                                  width: getHorizontalSize(129),
                                                  margin: getMargin(left: 20),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle56,
                                                            height:
                                                                getVerticalSize(
                                                                    185),
                                                            width:
                                                                getHorizontalSize(
                                                                    129),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        7)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top: 10,
                                                                        right:
                                                                            9,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .gradientBlueGrayToBlack
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                151),
                                                                    child: Text(
                                                                        enUs[
                                                                            "lbl_runing"]!,
                                                                        style: CustomTextStyles
                                                                            .labelMediumJostPrimaryContainer))))
                                                      ]))
                                            ])))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20, top: 18, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(enUs["lbl_live_score"]!,
                                                  style: CustomTextStyles
                                                      .titleSmallInter_1),
                                              GestureDetector(
                                                  onTap: () {
                                                    // onTapTxtViewall();
                                                  },
                                                  child: Text(
                                                      enUs["lbl_view_all"]!,
                                                      style: CustomTextStyles
                                                          .titleSmallInterSecondaryContainer_1))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(left: 21, top: 13),
                                        child: IntrinsicWidth(
                                            child: GestureDetector(
                                                onTap: () {
                                                  //onTapRow();
                                                },
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Live_Score(),
                                                      Live_Score(),
                                                      Live_Score(),
                                                      Live_Score(),
                                                    ]))))),
                                Padding(
                                    padding: getPadding(left: 21, top: 24),
                                    child: Text(enUs["lbl_whats_news"]!,
                                        style: CustomTextStyles
                                            .titleSmallInter_1)),
                                Padding(
                                    padding: getPadding(
                                        left: 21, top: 11, right: 92),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRectangle56139x161,
                                          height: getVerticalSize(139),
                                          width: getHorizontalSize(161),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(5))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle57,
                                          height: getVerticalSize(86),
                                          width: getHorizontalSize(99),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(5)),
                                          margin: getMargin(left: 20, top: 53))
                                    ])),
                                Padding(
                                    padding: getPadding(left: 25, top: 6),
                                    child: Row(children: [
                                      SizedBox(
                                          width: getHorizontalSize(127),
                                          child: Text(
                                              enUs[
                                                  "msg_lucas_lavallee_extends"]!,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .poppinsBlack90001Medium)),
                                      Container(
                                          width: getHorizontalSize(73),
                                          margin: getMargin(left: 52),
                                          child: Text(
                                              enUs[
                                                  "msg_pictures_of_tuesday_s"]!,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .poppinsBlack90001Medium))
                                    ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(1),
                                        width: getHorizontalSize(21),
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary))),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(250),
                                    margin: getMargin(left: 21),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 2),
                                                  child: Text(
                                                      enUs["lbl_20h_ago"]!,
                                                      style: CustomTextStyles
                                                          .poppinsBlack90001Light))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  height: getVerticalSize(34),
                                                  width: getHorizontalSize(250),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        right:
                                                                            47),
                                                                child: Text(
                                                                    enUs[
                                                                        "lbl_20h_ago"]!,
                                                                    style: CustomTextStyles
                                                                        .poppinsBlack90001Light))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            6),
                                                                child: Text(
                                                                    enUs[
                                                                        "lbl_live_streaming"]!,
                                                                    style: CustomTextStyles
                                                                        .titleSmallInter_1))),
                                                        // CustomImageView(
                                                        //     svgPath: ImageConstant
                                                        //         .imgGroup237816,
                                                        //     height: getVerticalSize(
                                                        //         34),
                                                        //     width: getHorizontalSize(
                                                        //         144),
                                                        //     alignment: Alignment
                                                        //         .centerRight,
                                                        //     onTap: () {
                                                        //       // onTapImgImageseven();
                                                        //     })
                                                      ])))
                                        ])),

                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(161),
                                        width: getHorizontalSize(341),
                                        margin: getMargin(top: 1),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle58,
                                                  height: getVerticalSize(161),
                                                  width: getHorizontalSize(341),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(5)),
                                                  alignment: Alignment.center,
                                                  onTap: () {
                                                    // onTapImgImageeight();
                                                  }),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          262),
                                                      margin: getMargin(
                                                          left: 9, top: 8),
                                                      child: Text(
                                                          enUs[
                                                              "msg_traning_session"]!,
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .titleSmallPrimaryContainerMedium)))
                                            ]))),

                                //live video

                                Padding(
                                    padding: getPadding(left: 21, top: 8),
                                    child: Text(enUs["lbl_video"]!,
                                        style: CustomTextStyles
                                            .titleSmallInterMedium)),

                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: getPadding(top: 9),
                                    child: GestureDetector(
                                        onTap: () {
                                          // onTapRowplayone();
                                        },
                                        child: SizedBox(
                                            width: 700,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(161),
                                                      width: getHorizontalSize(
                                                          128),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle59,
                                                                height:
                                                                    getVerticalSize(
                                                                        161),
                                                                width:
                                                                    getHorizontalSize(
                                                                        128),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPlay,
                                                                height:
                                                                    getSize(42),
                                                                width:
                                                                    getSize(42),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            4)),
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            23))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(161),
                                                      width: getHorizontalSize(
                                                          150),
                                                      margin:
                                                          getMargin(left: 19),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle60,
                                                                height:
                                                                    getVerticalSize(
                                                                        161),
                                                                width:
                                                                    getHorizontalSize(
                                                                        150),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPlay,
                                                                height:
                                                                    getSize(42),
                                                                width:
                                                                    getSize(42),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            4)),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(161),
                                                      width: getHorizontalSize(
                                                          150),
                                                      margin:
                                                          getMargin(left: 18),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle61,
                                                                height:
                                                                    getVerticalSize(
                                                                        161),
                                                                width:
                                                                    getHorizontalSize(
                                                                        150),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPlay,
                                                                height:
                                                                    getSize(42),
                                                                width:
                                                                    getSize(42),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            4)),
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            48))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(161),
                                                      width: getHorizontalSize(
                                                          150),
                                                      margin:
                                                          getMargin(left: 19),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle62,
                                                                height:
                                                                    getVerticalSize(
                                                                        161),
                                                                width:
                                                                    getHorizontalSize(
                                                                        150),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPlay,
                                                                height:
                                                                    getSize(42),
                                                                width:
                                                                    getSize(42),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            4)),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))
                                                ])))),

                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      height: 420,
                                      margin: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/hockryground.jpeg'),
                                          // Replace with your image path
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Text(
                                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Text(
                                            '2 hrs',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // Align(alignment: Alignment.center,
                                //     child: Padding(padding: getPadding(
                                //         left: 31, top: 25, right: 22),
                                //         child: Obx(() =>
                                //             ListView.separated(
                                //                 physics: NeverScrollableScrollPhysics(),
                                //                 shrinkWrap: true,
                                //                 separatorBuilder: (context,
                                //                     index) {
                                //                   return SizedBox(
                                //                       height: getVerticalSize(
                                //                           26));
                                //                 },
                                //                 itemCount: controller
                                //                     .newsScoreModelObj.value
                                //                     .userprofilestacItemList
                                //                     .value.length,
                                //                 itemBuilder: (context,
                                //                     index) {
                                //                   UserprofilestacItemModel model = controller
                                //                       .newsScoreModelObj
                                //                       .value
                                //                       .userprofilestacItemList
                                //                       .value[index];
                                //                   return UserprofilestacItemWidget(
                                //                       model);
                                //                 }))))
                              ]))
                    ])))));
  }

  void onTapHome(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
