import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../Utils/validation_functions.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../sport_category_info.dart';

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  String? selectedPosition;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Theme.of(context).colorScheme.background,
              body: Form(
                //key: _formKey,
                  child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(left: 15, top: 30, right: 18,bottom: 10),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 7, right: 22),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: getPadding(bottom: 1),
                                                    child: Text("Obtained Diploma",
                                                        style: CustomTextStyles
                                                            .labelLargePoppins)),

                                              ])),
                                      Padding(
                                        padding: getPadding(left: 7, top: 6, right: 7),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  PinkFillCheckbox(),
                                                  Text("Yes"),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  PinkFillCheckbox(),
                                                  Text("No"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

//professional training
                                      Padding(
                                          padding: getPadding(left: 8, top: 16),
                                          child: Text("Professional Training ",
                                              style: CustomTextStyles
                                                  .labelLargePoppins)),
                                      ToggleButtonGroup(),

//category
                                      Padding(
                                          padding: getPadding(left: 8, top: 8,bottom: 8),
                                          child: Text("Category ",
                                              style: CustomTextStyles
                                                  .labelLargePoppins)),

                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200], // Set the background color to gray
                                          borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left:5.0),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            value: selectedPosition, // Replace with your selected value variable
                                            hint: Text("Please select category"), // Set the hint text
                                            items: [
                                              "Position 1",
                                              "Position 2",
                                              "Position 3",
                                              // Add your position options here
                                            ].map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) { // Change the parameter type to String?
                                              setState(() {
                                                selectedPosition = newValue ?? ""; // Update the selected value (use empty string if null)
                                              });
                                            },
                                          ),
                                        ),
                                      ),


                                      Padding(
                                          padding: getPadding(left: 8, top: 8,bottom: 8),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: getPadding(bottom: 1),
                                                    child: Text("Seeking a Club",
                                                        style: CustomTextStyles
                                                            .labelLargePoppins)),

                                              ])),
                                      Padding(
                                        padding: getPadding(left: 7, top: 6, right: 7),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  PinkFillCheckbox(),
                                                  Text("Yes"),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  PinkFillCheckbox(),
                                                  Text("No"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),



                                      CustomElevatedButton(
                                          width: getHorizontalSize(136),
                                          height: getVerticalSize(40),
                                          text: enUs["lbl_next"]!,
                                          margin: getMargin(top: 40),
                                          buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL18,
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallPrimaryContainer,
                                          onTap: () {
                                            onTapNext();
                                          },
                                          alignment: Alignment.centerRight)
                                    ]))
                          ])))));
  }

  void onTapNext() {

    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sports_Category_info()));
  }
}


//PIKED FILLED COLOR CIRCLE WIDGET

class PinkFillCheckbox extends StatefulWidget {
  @override
  _PinkFillCheckboxState createState() => _PinkFillCheckboxState();
}

class _PinkFillCheckboxState extends State<PinkFillCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      onDoubleTap: () {
        setState(() {
          isChecked = false;
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isChecked ? Colors.transparent : Colors.pink,
            width: 2.0,
          ),
          color: isChecked ? Colors.pink : Colors.transparent,
        ),
        child: isChecked
            ? Icon(
          Icons.check,
          color: Colors.white,
          size: 15.0,
        )
            : null,
      ),
    );
  }
}




//professional Training widget

class ToggleButtonGroup extends StatefulWidget {
  @override
  _ToggleButtonGroupState createState() => _ToggleButtonGroupState();
}

class _ToggleButtonGroupState extends State<ToggleButtonGroup> {
  bool isPreClubSelected = false;
  bool isPreTrainingSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isPreClubSelected = !isPreClubSelected;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isPreClubSelected ? Colors.pink : Colors.white,
              ),
              child: Text("Pre Club",style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isPreTrainingSelected = !isPreTrainingSelected;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isPreTrainingSelected ? Colors.pink : Colors.white,
              ),
              child: Text("Pre Training",style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
      ],
    );
  }
}


