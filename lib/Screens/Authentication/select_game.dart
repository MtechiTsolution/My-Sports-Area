import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_sports_app/Screens/Authentication/player_auth/tabchanger_create_ac.dart';
import 'package:my_sports_app/Screens/Authentication/widget/customtextfiled.dart';
import 'package:my_sports_app/Utils/size_utils.dart';
import 'package:my_sports_app/Utils/them.dart';
import 'package:my_sports_app/localization/en_us/en_us_translations.dart';
import 'package:my_sports_app/theme/app_decoration.dart';
import 'package:intl/intl.dart';



class Game_selection extends StatefulWidget {
  const Game_selection({Key? key}) : super(key: key);

  @override
  State<Game_selection> createState() => Game_selectionState();
}

class Game_selectionState extends State<Game_selection> {

  bool maleChecked = false;
  bool femaleChecked = false;
  String? imagePath;
  String? selectedGame;
  TextEditingController jerseyNumberController = TextEditingController();
  List<String> games = ['Football', 'Hand ball', 'Basket ball', 'Rug bay'];
  String? selectedGameError;
  DateTime? selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          enUs["lbl_game_selection"]!,
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          color: isDarkMode ? AppColors.darkBackground : AppColors.white,
          width: double.maxFinite,
          padding: getPadding(left: 17, right: 17),
          child: Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
              bottom: MediaQuery.of(context).size.height * 0.1,
            ),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: AppDecoration.outlineBlack.copyWith(
              color: isDarkMode ? AppColors.darkBackground : AppColors.white,
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.02),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(left: 0, top: 5, right: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(left: 0, top: 10, bottom: 5),
                          child: Text(
                            "Joining Date",
                            style: labelText.Lebl_Text(isDarkMode),
                          ),
                        ),
                        Text(
                          selectedDate != null
                              ? DateFormat('yyyy-MM-dd').format(selectedDate!)
                              : 'No date selected',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 0, top: 5, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(left: 0, top: 10, bottom: 5),
                        child: Text(
                          "Please select a game",
                          style: labelText.Lebl_Text(isDarkMode),
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: selectedGame,
                        onChanged: (value) {
                          setState(() {
                            selectedGame = value;
                            selectedGameError = null;
                          });
                        },
                        items: games.map<DropdownMenuItem<String>>((String game) {
                          return DropdownMenuItem<String>(
                            value: game,
                            child: Text(game),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          hintText: "Select a game",
                          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: AppColors.pink),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: AppColors.pink),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: AppColors.pink),
                          ),
                          errorText: selectedGameError,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please select a game";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: screenWidth * 0.02,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.001,
                  ),
                  child: Text(
                    "Jersey Number",
                    style: labelText.Lebl_Text(isDarkMode),
                  ),
                ),
                CustomTextField(
                  hintText: "Enter Jersey Number",
                  isDarkMode: isDarkMode,
                  controller: jerseyNumberController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: getPadding(
                    left: screenWidth * 0.02,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.001,
                  ),
                  child: Text(
                    "Measurements",
                    style: labelText.Lebl_Text(isDarkMode),
                  ),
                ),
                Padding(
                  padding: getPadding(top: screenHeight * 0.008),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(screenWidth * 0.03),
                            hintText: "height",
                            hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: AppColors.pink),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: AppColors.pink),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: AppColors.pink),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Expanded(
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(screenWidth * 0.03),
                            hintText: "Weight",
                            hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: AppColors.pink),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: AppColors.pink),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: AppColors.pink),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: screenWidth * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate game selection
                        if (selectedGame == null || selectedGame!.isEmpty) {
                          // Set the error message to be displayed over the selected field
                          setState(() {
                            selectedGameError = "Please select a game";
                          });
                        } else {
                          // Navigate to the next screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tab_changer_acc()),
                          );
                        }
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        imagePath = pickedFile.path;
      });
    }
  }

  void onTapCreateaccount() {}

  void onTapTxtWithlogin() {}
}
