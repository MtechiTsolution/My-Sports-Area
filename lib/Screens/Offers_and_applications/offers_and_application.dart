import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Offers_and_applications/widgets/application.dart';
import 'package:my_sports_app/Screens/Offers_and_applications/widgets/custom_search_view.dart';
import 'package:my_sports_app/Screens/Offers_and_applications/widgets/offers.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_image_2.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';

class Offer_and_Application extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar: CustomAppBar(
            leadingWidth: getHorizontalSize(42),
            leading: AppbarImage1(
                imagePath: ImageConstant.imgHome1,
                margin: getMargin(left: 19, top: 10, bottom: 13),
                onTap: () {
                  //onTapHomethreeone();
                }),
            centerTitle: true,
            title: AppbarSubtitle(
                text: enUs["msg_offer_applications"]!,
                margin: getMargin(top: 10, bottom: 6)),
            actions: [
              AppbarImage2(
                  svgPath: ImageConstant.imgPlusBlack900,
                  margin:
                  getMargin(left: 19, top: 10, right: 19, bottom: 11))
            ],
            styleType: Style.bgShadow),
        body:

        Column(
          children: [
            Padding(
                padding: getPadding(left: 13, top: 15, right: 18),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgHistory1,
                          height: getSize(29),
                          width: getSize(29),
                          margin: getMargin(top: 1, right: 3)),
                      Expanded(
                        child:
                        CustomSearchBar(
                          controller: searchController,
                          onClear: () {
                            searchController.clear();
                          },
                        ),
                      ),
                      CustomImageView(
                          imagePath: ImageConstant.imgSortalt1,
                          height: getSize(23),
                          width: getSize(23),
                          margin:
                          getMargin(left: 12, top: 4, bottom: 3))
                    ])),
            Padding(
                padding: getPadding(
                    left: 46, right: 46,bottom: 10),
                child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(
                              bottom: 1),
                          child: Text(
                              enUs["lbl_offer"]!,
                              style: CustomTextStyles
                                  .titleSmall_2)),
                      Text(
                          enUs[
                          "lbl_applications"]!,
                          style: CustomTextStyles
                              .titleSmall_2)
                    ])),



            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Offers(),
                      Applications()
                    ]),

                 Container(height: 70,),
              ],
            ),
          ],
        ),
      );
  }
}




