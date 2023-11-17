import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_8.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'comments_reply.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  bool isReplyVisible = false;

  @override
  Widget build(BuildContext context) {
    // Scaffold widget provides basic visual structure for the screen
    return Scaffold(
      // Set the background color for the screen
      backgroundColor: Colors.white,
      // Stack widget allows widgets to be positioned on top of each other
      body: Stack(
        children: [
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomAppBar(
                  height: getVerticalSize(17),
                  title: Padding(
                    padding: getPadding(
                      left: 13,
                    ),
                    child: Row(
                      children: [
                        AppbarSubtitle8(
                          text: enUs["lbl_most_relevant"]!,
                        ),
                        AppbarImage(
                          imagePath: ImageConstant.imgRightarrow4,
                          margin: getMargin(
                            left: 5,
                            top: 4,
                            bottom: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 16,
                      right: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse15,
                          height: getSize(36),
                          width: getSize(36),
                          radius: BorderRadius.circular(
                            getHorizontalSize(18),
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 4,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: getMargin(
                              left: 11,
                            ),
                            padding: getPadding(
                              left: 19,
                              top: 4,
                              right: 19,
                              bottom: 4,
                            ),
                            decoration:
                            AppDecoration.fillGray40006.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  enUs[ "lbl_commodo"]!,
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                  ),
                                  child: Text(
                                    enUs["msg_quis_hendrerit_dolor"]!,
                                    style:
                                    CustomTextStyles.labelMediumGray800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 78,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: Text(
                          enUs[  "lbl_8w"]!,
                          style: CustomTextStyles.labelMediumGray800,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 35,
                          bottom: 1,
                        ),
                        child: Text(
                          enUs[ "lbl_like"]!,
                          style: CustomTextStyles.labelMediumGray800,
                        ),
                      ),

                      Padding(
                        padding: getPadding(left: 34),
                        child: GestureDetector(
                          onTap: () {
                            // Toggle the visibility of the reply section
                            setState(() {
                              isReplyVisible = !isReplyVisible;
                            });
                          },
                          child: Text(
                            enUs["lbl_reply"]!,
                            style: CustomTextStyles.labelMediumGray800,
                          ),
                        ),
                      ),

                      // Show the reply section if isReplyVisible is true


                    ],
                  ),
                ),

                Expanded(
                    child: ReplyScreen())


                // if (isReplyVisible)
                //   Padding(
                //     padding: getPadding(left: MediaQuery.of(context).size.width* 0.1,right: MediaQuery.of(context).size.width* 0.1),
                //     child: CustomTextFormField(
                //       autofocus: false,
                //       // controller: controller.commentController,
                //       hintText: enUs["msg_comments_as_lacus"]!,
                //       hintStyle: CustomTextStyles.bodySmallInterGray70001,
                //       textInputAction: TextInputAction.done,
                //       suffix: Container(
                //         margin: getMargin(
                //           left: 0,
                //           top: 6,
                //           right: 10,
                //           bottom: 6,
                //         ),
                //         child: CustomImageView(
                //           imagePath: ImageConstant.imgPaperplanetop1,
                //           height: getSize(21),
                //           width: getSize(21),
                //         ),
                //       ),
                //       suffixConstraints: BoxConstraints(
                //         maxHeight: getVerticalSize(34),
                //       ),
                //       contentPadding: getPadding(
                //         left: 16,
                //         top: 9,
                //         bottom: 9,
                //       ),
                //       borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                //       fillColor: appTheme.blueGray100,
                //     ),
                //   ),

              ],
            ),
          ),

        //  Positioned widget to place the comment input at the bottom
          Positioned(
            bottom: 0, // Position the widget at the bottom of the screen
            left: 0,
            right: 0,
            // Container to hold the comment input field
            child: Container(
              padding: getPadding(all: 5),
             // margin: const EdgeInsets.only(left: 4, right: 3, bottom: 0),
              // Apply decoration to the input field container
              decoration: BoxDecoration(
                color: Colors.grey[300], // Set your desired background color
                // You can customize other decoration properties here (e.g., borderRadius)
              ),
              // CustomTextFormField represents your input field widget
              child:

              CustomTextFormField(
                autofocus: false,
                // controller: controller.commentController,
                hintText: enUs["msg_comments_as_lacus"]!,
                hintStyle: CustomTextStyles.bodySmallInterGray70001,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 6,
                    right: 10,
                    bottom: 6,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPaperplanetop1,
                    height: getSize(21),
                    width: getSize(21),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(34),
                ),
                contentPadding: getPadding(
                  left: 16,
                  top: 9,
                  bottom: 9,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                fillColor: appTheme.blueGray100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}







