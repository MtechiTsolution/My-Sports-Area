import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Home.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';

import '../../Utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class My_Interests extends StatefulWidget {
  const My_Interests({super.key});

  @override
  State<My_Interests> createState() => _My_InterestsState();
}

class _My_InterestsState extends State<My_Interests> {
  TextEditingController tableTennisController =
      TextEditingController(); // Define a controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.primaryContainer,
      body: Container(
        width: double.maxFinite,
        padding: getPadding(left: 16, right: 16),
        child: Container(
          margin: getMargin(left: 3, bottom: 7, top: 50),
          padding: getPadding(left: 15, top: 24, right: 15, bottom: 24),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  enUs["lbl_my_interests"]!,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Padding(
                padding: getPadding(left: 11, top: 77),
                child: Text(
                  enUs["msg_choose_interests"]!,
                  style: CustomTextStyles.titleMediumBlack9000116,
                ),
              ),
              CustomTextFormField(
                controller: tableTennisController, // Use the controller
                margin: getMargin(left: 2, top: 8),
                hintText: enUs["lbl_table_tennis"]!,
                hintStyle: CustomTextStyles.bodySmall12,
                textInputAction: TextInputAction.done,
              ),
              CustomElevatedButton(
                width: getHorizontalSize(96),
                text: enUs["lbl_add"]!,
                margin: getMargin(top: 37, right: 3),
                buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
                alignment: Alignment.centerRight,
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, // Set the button color to pink
                ),
              ),
              Padding(
                padding: getPadding(top: 54),
                child:
                    buildChipsListWidget(), // Call the method to build ChipsListWidget
              ),
              CustomElevatedButton(
                width: getHorizontalSize(96),
                text: enUs["lbl_save"]!,
                margin: getMargin(top: 71, right: 3, bottom: 28),
                buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
                onTap: () {
                  onTapSave();
                },
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapSave() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  // Define the method to create ChipsListWidget
  Widget buildChipsListWidget() {
    return ChipsListWidget(
      chipList: [
        ChipviewtableItemModel(label: 'cricket'),
        ChipviewtableItemModel(label: 'football'),
        ChipviewtableItemModel(label: 'hockey'),
        ChipviewtableItemModel(label: 'volleyball'),
        ChipviewtableItemModel(label: 'Table Tennis'),
        ChipviewtableItemModel(label: 'cricket'),
        ChipviewtableItemModel(label: 'Badminton'),
        ChipviewtableItemModel(label: 'Field Hockey'),
        ChipviewtableItemModel(label: 'Tennis'),
        ChipviewtableItemModel(label: 'Badminton'),
        ChipviewtableItemModel(label: 'Gym'),
        ChipviewtableItemModel(label: 'Tennis'),
      ],
    );
  }
}

class ChipsListWidget extends StatelessWidget {
  final List<ChipviewtableItemModel> chipList;

  ChipsListWidget({required this.chipList});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: getVerticalSize(8),
      spacing: getHorizontalSize(8),
      children: chipList.map((model) {
        return Chip(
          label: Text(
              model.label), // Replace with the actual property of your model.
          // Customize the appearance of the Chip as needed.
        );
      }).toList(),
    );
  }
}

class ChipviewtableItemModel {
  final String label; // Replace with the actual properties your model has.

  ChipviewtableItemModel({required this.label});
}
