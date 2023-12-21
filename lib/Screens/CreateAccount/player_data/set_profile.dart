import 'package:flutter/material.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../Utils/validation_functions.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'Information_peroformance.dart';

class Player_set_profile extends StatefulWidget {
  const Player_set_profile({super.key});

  @override
  State<Player_set_profile> createState() => _Player_set_profileState();
}

class _Player_set_profileState extends State<Player_set_profile> {
  DateTime? selectedDate;
  bool maleChecked = false;
  bool femaleChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Form(
          // key: _formKey,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, right: 17),
                child: Container(
                    margin: getMargin(left: 1, top: 71),
                    padding: getPadding(
                        left: 17, top: 20, right: 17, bottom: 20),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child:

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: getHorizontalSize(122),
                            child: Text(
                              enUs["lbl_create_account"]!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Add some spacing between the text and the next elements
                        // Upload Image Section
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Border around Camera Icon and Upload Image text
                              Container(

                                padding: EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black87), // Adjust color as needed
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Column(
                                  children: [
                                    // Camera Icon
                                    Icon(Icons.camera_alt),
                                    SizedBox(height: 8), // Add spacing between icon and text
                                    // Text "Upload Image"
                                    Text(
                                      "Upload Image",
                                      style: theme.textTheme.subtitle1, // You can adjust the style as needed
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20), // Add some spacing between the sections
                        // Date of Birth Section
                        Padding(
                            padding: getPadding(left: 7, top: 1,bottom: 5),
                            child: Text("Date of birth",

                          style: theme.textTheme.titleMedium,)
                        ),
                        GestureDetector(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );

                            if (pickedDate != null && pickedDate != selectedDate) {
                              setState(() {
                                selectedDate = pickedDate;
                              });
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (selectedDate != null)
                                  Text(
                                    "${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}",
                                    style: theme.textTheme.titleSmall,
                                  )
                                else
                                  Text(
                                    "Set date of birth",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                Spacer(),
                                Icon(Icons.calendar_today),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: getPadding(left: 7, top: 10,bottom: 5),
                            child: Text("Jersey Number",

                              style: theme.textTheme.titleMedium,)
                        ),

                        TextFormField(
                          autofocus: false,
                          // controller: controller
                          //     .lastNameController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            hintText: "Enter Jersey Number",
                            hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            // You can perform actions when the text changes
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter valid text";
                            }

                            // You can add additional validation if needed

                            return null;
                          },
                        ),

                        Padding(
                            padding: getPadding(left: 7, top: 10,bottom: 5),
                            child: Text("Measurements",

                              style: theme.textTheme.titleMedium,)
                        ),

                        Padding(
                            padding: getPadding(top: 8),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: TextFormField(
                                        autofocus: false,
                                        // controller: controller
                                        //     .lastNameController,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(15),
                                          hintText: "height",
                                          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                          ),
                                        ),
                                        keyboardType: TextInputType.number,
                                        onChanged: (value) {
                                          // You can perform actions when the text changes
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please enter valid text";
                                          }

                                          // You can add additional validation if needed

                                          return null;
                                        },
                                      )),
                                  SizedBox(width: 10,),
                                  Expanded(
                                      child: TextFormField(
                                        autofocus: false,
                                        // controller: controller
                                        //     .lastNameController,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(15),
                                          hintText: "Weight",
                                          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                          ),
                                        ),
                                        keyboardType: TextInputType.number,
                                        onChanged: (value) {
                                          // You can perform actions when the text changes
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please enter valid text";
                                          }

                                          // You can add additional validation if needed

                                          return null;
                                        },
                                      )



                                  )
                                ])),

                        SizedBox(height: 20), // Adjust the spacing between the text field and checkboxes

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  maleChecked = !maleChecked;
                                  if (maleChecked) {
                                    femaleChecked = false; // Unselect female if male is selected
                                  }
                                });
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  color: maleChecked ? Colors.pink : Colors.transparent,
                                ),
                                child: maleChecked
                                    ? Icon(
                                  Icons.check,
                                  size: 18,
                                  color: Colors.white,
                                )
                                    : null,
                              ),
                            ),
                            SizedBox(width: 10), // Adjust the spacing between checkboxes
                            Text("Male"),

                            SizedBox(width: MediaQuery.of(context).size.width*0.2), // Adjust the spacing between checkboxes

                            InkWell(
                              onTap: () {
                                setState(() {
                                  femaleChecked = !femaleChecked;
                                  if (femaleChecked) {
                                    maleChecked = false; // Unselect male if female is selected
                                  }
                                });
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  color: femaleChecked ? Colors.pink : Colors.transparent,
                                ),
                                child: femaleChecked
                                    ? Icon(
                                  Icons.check,
                                  size: 18,
                                  color: Colors.white,
                                )
                                    : null,
                              ),
                            ),
                            SizedBox(width: 10), // Adjust the spacing between checkboxes
                            Text("Female"),
                          ],
                        ),

                        SizedBox(height: 20), // Add spacing between checkboxes and the "Next" button

                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Informatio_performance()));
                              // Add the logic for the "Next" button
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.pink, shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ), // Set the button color to pink
                            ),
                            child: Text("Next"),
                          ),
                        ),
                      ],
                    ),




                ))));
  }

  void onTapCreateaccount() {}

  void onTapTxtWithlogin() {}
}



