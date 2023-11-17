import 'package:flutter/material.dart';

import '../../Utils/image_constant.dart';
import '../../Utils/size_utils.dart';
import '../../localization/en_us/en_us_translations.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';

// ... other imports ...

class Player extends StatelessWidget {
  const Player({Key? key});

  @override
  Widget build(BuildContext context) {
    final double containerHeight = getVerticalSize(890); // FIGMA_DESIGN_HEIGHT
    final double containerWidth = getHorizontalSize(393); // FIGMA_DESIGN_WIDTH

    return Container(
      height: containerHeight,
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: theme.colorScheme.primaryContainer,
          body: Container(
            width: containerWidth,
            height: containerHeight,
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup994),
                fit: BoxFit.cover,
              ),
            ),
            child: SizedBox(
              height: containerHeight,
              width: containerWidth,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: getVerticalSize(500),
                      margin: getMargin(left: 14, right: 14, bottom: 142),
                      padding: getPadding(left: 20, top: 5, right: 20, bottom: 31),
                      decoration: AppDecoration.gradientBlackDToBlackD,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(top: 0),
                            child: Text(
                              enUs["lbl_player"]!,
                              style: CustomTextStyles.jostPrimaryContainer,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(311),
                            margin: getMargin(left: 13, top: 31),
                            child: Text(
                              enUs["msg_lorem_ipsum_dolor"]!,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumPoppinsPrimaryContainerMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgWhatsappimage20230815,
                    height: getVerticalSize(128),
                    alignment: Alignment.topCenter,
                    margin: getMargin(top: 50),
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
