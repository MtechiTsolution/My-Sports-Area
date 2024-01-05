import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_sports_app/Screens/Authentication/player_auth/tabchanger_create_ac.dart';
import '../../../Utils/size_utils.dart';
import '../../../Utils/them.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/theme_helper.dart';


class Player_set_profile extends StatefulWidget {
  const Player_set_profile({super.key});

  @override
  State<Player_set_profile> createState() => _Player_set_profileState();
}

class _Player_set_profileState extends State<Player_set_profile> {
  DateTime? selectedDate;
  bool maleChecked = false;
  bool femaleChecked = false;
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Form(
        // key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: isDarkMode ? Colors.grey[800] : Colors.white,
          width: double.maxFinite,
          padding: getPadding(left: 17, right: 17),
          child: Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1,bottom: MediaQuery.of(context).size.height*0.1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
            decoration: AppDecoration.outlineBlack.copyWith(
                color: isDarkMode ? Colors.grey[800] : Colors.white,
                borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
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
                      style: CustomTextheading.headlineMedium(isDarkMode),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02), // Add some spacing between the text and the next elements
                // Upload Image Section
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          // Call the method to open the gallery and get the image
                          await _pickImageFromGallery();
                        },
                        child: Container(
                          width: screenWidth * 0.32,
                          height: screenHeight * 0.15,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black87),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Check if an image is selected, display the image
                              imagePath != null
                                  ? Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Image.file(
                                    File(imagePath!),
                                    width: screenWidth * 0.32,
                                    height: screenHeight * 0.13,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      color: Colors.black54,
                                      child: Text(
                                        "Edit Image",
                                        style: theme.textTheme.titleMedium?.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                                  : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.camera_alt),
                                  SizedBox(height: screenHeight * 0.005),
                                  Text(
                                    "Upload Image",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02), // Add some spacing between the sections
                // Date of Birth Section
                Padding(
                    padding: getPadding(left: screenWidth * 0.02, top: screenHeight * 0.001, bottom: screenHeight * 0.001),
                    child: Text(
                      "Date of birth",
                      style: labelText.Lebl_Text(isDarkMode),
                    )),
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
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                            style: HilightText.hilight_Text(isDarkMode),
                          ),
                        Spacer(),
                        Icon(Icons.calendar_today),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: getPadding(left: screenWidth * 0.02, top: screenHeight * 0.01, bottom: screenHeight * 0.001),
                    child: Text(
                      "Jersey Number",
                      style: labelText.Lebl_Text(isDarkMode),
                    )),
                TextFormField(
                  autofocus: false,
                  // controller: controller
                  //     .lastNameController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(screenWidth * 0.03),
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
                    padding: getPadding(left: screenWidth * 0.02, top: screenHeight * 0.01, bottom: screenHeight * 0.001),
                    child: Text(
                      "Measurements",
                      style: labelText.Lebl_Text(isDarkMode),
                    )),
                Padding(
                    padding: getPadding(top: screenHeight * 0.008),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: TextFormField(
                                autofocus: false,
                                // controller: controller
                                //     .lastNameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(screenWidth * 0.03),
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
                          SizedBox(width: screenWidth * 0.02),
                          Expanded(
                              child: TextFormField(
                                autofocus: false,
                                // controller: controller
                                //     .lastNameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(screenWidth * 0.03),
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
                              ))
                        ])),

                SizedBox(height: screenHeight * 0.02), // Adjust the spacing between the text field and checkboxes

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
                        width: screenWidth * 0.06,
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.pink,
                            width: 2,
                          ),
                          color: maleChecked ? Colors.pink : Colors.transparent,
                        ),
                        child: maleChecked
                            ? Icon(
                          Icons.check,
                          size: screenWidth * 0.04,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02), // Adjust the spacing between checkboxes
                    Text("Male"),

                    SizedBox(width: screenWidth * 0.15), // Adjust the spacing between checkboxes

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
                        width: screenWidth * 0.06,
                        height: screenHeight * 0.03,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.pink,
                            width: 2,
                          ),
                          color: femaleChecked ? Colors.pink : Colors.transparent,
                        ),
                        child: femaleChecked
                            ? Icon(
                          Icons.check,
                          size: screenWidth * 0.04,
                          color: Colors.white,
                        )
                            : null,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02), // Adjust the spacing between checkboxes
                    Text("Female"),
                  ],
                ),

                SizedBox(height: screenHeight * 0.05), // Add spacing between checkboxes and the "Next" button

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: screenWidth * 0.5, // Adjust the width as needed
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Tab_changer_acc()));
                        // Add the logic for the "Next" button
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text("Next"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        imagePath = pickedFile.path;
      });
    }
  }

  void onTapCreateaccount() {}

  void onTapTxtWithlogin() {}
}
