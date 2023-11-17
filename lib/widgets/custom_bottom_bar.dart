import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../Utils/size_utils.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../Utils/image_constant.dart';
import 'custom_image_view.dart';



class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged, required int currentIndex,
  }) : super(
          key: key,
        );

 // RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGlobe25x26,
      activeIcon: ImageConstant.imgGlobe25x26,
      type: BottomBarEnum.Globe25x26,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgEnvelope3,
      activeIcon: ImageConstant.imgEnvelope3,
      type: BottomBarEnum.Envelope3,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFile,
      activeIcon: ImageConstant.imgFile,
      type: BottomBarEnum.File,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgComponent14,
      activeIcon: ImageConstant.imgComponent14,
      type: BottomBarEnum.Component14,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLightbulb,
      activeIcon: ImageConstant.imgLightbulb,
      //title: "lbl_3".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTicket,
      activeIcon: ImageConstant.imgTicket,
      type: BottomBarEnum.Ticket,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(72),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
         // currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getHorizontalSize(63),
                    child: Divider(),
                  ),
                  CustomImageView(
                    svgPath: bottomMenuList[index].isPng == true
                        ? null
                        : bottomMenuList[index].icon,
                    imagePath: bottomMenuList[index].isPng == true
                        ? bottomMenuList[index].icon
                        : null,
                    height: getSize(25),
                    width: getSize(25),
                    margin: getMargin(
                      top: 20,
                    ),
                  ),
                ],
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].isPng == true
                    ? null
                    : bottomMenuList[index].activeIcon,
                imagePath: bottomMenuList[index].isPng == true
                    ? bottomMenuList[index].activeIcon
                    : null,
                height: getSize(26),
                width: getSize(26),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            //selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Globe25x26,
  Envelope3,
  File,
  Component14,
  tf,
  Ticket,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
