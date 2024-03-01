import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_sports_app/Screens/Authentication/player_auth/tabchanger_create_ac.dart';

import 'package:my_sports_app/Screens/Authentication/select_game.dart';
import 'package:my_sports_app/Screens/Authentication/widget/customtextfiled.dart';

import '../../../Utils/them.dart';
import '../../../localization/en_us/en_us_translations.dart';

import '../../../theme/theme_helper.dart';



class Player_Bio extends StatefulWidget {
  const Player_Bio({Key? key}) : super(key: key);

  @override
  State<Player_Bio> createState() => _Player_BioState();
}

class _Player_BioState extends State<Player_Bio> {
  DateTime? selectedDate;
  bool maleChecked = false;
  bool femaleChecked = false;
  String? imagePath;
  TextEditingController bioController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(viewInsets: EdgeInsets.zero),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text(
            enUs["lbl_player_bio"]!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextheading.headlineMedium(isDarkMode),
          ),
          centerTitle: true,
          backgroundColor: isDarkMode ? AppColors.darkBackground : AppColors.pink,
          iconTheme: IconThemeData(
            color: isDarkMode ? AppColors.iconColorDark : Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom + 20,),
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.1),
                  GestureDetector(
                    onTap: () async {
                      await _pickImageFromGallery();
                    },
                    child: Container(
                      width: screenWidth * 0.32,
                      height: screenHeight * 0.15,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.pink),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          if (imagePath != null)
                            Image.file(
                              File(imagePath!),
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            )
                          else
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.camera_alt),
                                        SizedBox(height: screenHeight * 0.005),
                                        Text(
                                          "Upload Image",
                                          style: HintText.hint_Text(isDarkMode),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          if (imagePath != null)
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
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Set date of birth",
                      style: labelText.Lebl_Text(isDarkMode),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  GestureDetector(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              primaryColor: AppColors.pink,
                              colorScheme: ColorScheme.light(primary: AppColors.pink),
                              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                            ),
                            child: child!,
                          );
                        },
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
                        border: Border.all(color: AppColors.pink),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                  SizedBox(height: screenHeight * 0.02),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Select a Gender",
                      style: labelText.Lebl_Text(isDarkMode),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            maleChecked = !maleChecked;
                            if (maleChecked) {
                              femaleChecked = false;
                            }
                          });
                        },
                        child: Container(
                          width: screenWidth * 0.06,
                          height: screenHeight * 0.03,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.pink,
                              width: 2,
                            ),
                            color: maleChecked ? AppColors.pink : Colors.transparent,
                          ),
                          child: maleChecked
                              ? Icon(
                            Icons.check,
                            size: screenWidth * 0.04,
                            color: AppColors.white,
                          )
                              : null,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text("Male"),
                      SizedBox(width: screenWidth * 0.15),
                      InkWell(
                        onTap: () {
                          setState(() {
                            femaleChecked = !femaleChecked;
                            if (femaleChecked) {
                              maleChecked = false;
                            }
                          });
                        },
                        child: Container(
                          width: screenWidth * 0.06,
                          height: screenHeight * 0.03,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.pink,
                              width: 2,
                            ),
                            color: femaleChecked ? AppColors.pink : Colors.transparent,
                          ),
                          child: femaleChecked
                              ? Icon(
                            Icons.check,
                            size: screenWidth * 0.04,
                            color: AppColors.white,
                          )
                              : null,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text("Female"),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Mobile Number",
                      style: labelText.Lebl_Text(isDarkMode),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  CustomTextField(
                    hintText: "Phone Number",
                    isDarkMode: isDarkMode,
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Address",
                      style: labelText.Lebl_Text(isDarkMode),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  CustomTextField(
                    hintText: "Address",
                    isDarkMode: isDarkMode,
                    controller: addressController,
                    keyboardType: TextInputType.streetAddress,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Bio",
                      style: labelText.Lebl_Text(isDarkMode),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  CustomTextField(
                    hintText: "Enter your bio",
                    isDarkMode: isDarkMode,
                    controller: bioController,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    minLines: 3,
                    onChanged: (value) {
                      // You can perform actions when the text changes
                    },
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Container(
                    width: screenWidth * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Tab_changer_acc()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text("Next"),
                    ),
                  ),
                ],
              ),
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
}
