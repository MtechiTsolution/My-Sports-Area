import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Achievement_player extends StatefulWidget {
  const Achievement_player({Key? key}) : super(key: key);

  @override
  State<Achievement_player> createState() => _Achievement_playerState();
}

class _Achievement_playerState extends State<Achievement_player> {
  List<AchievementData> achievementList = []; // List to store achievement data

  TextEditingController achievementNameController = TextEditingController();
  TextEditingController achievementDescriptionController = TextEditingController();

  DateTime? selectedDate; // Variable to store the selected date
  File? _image;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display Added Achievements
              Column(
                children: achievementList.map((achievement) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 200, // Set the desired height for the image
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                                    child: achievement.image != null
                                        ? Image.file(
                                      achievement.image!,
                                      fit: BoxFit.cover,
                                    )
                                        : Placeholder(), // Placeholder if no image available
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Title: ${achievement.title}"),
                                      Text("Date: ${achievement.date != null ? DateFormat.yMMMd().format(achievement.date!) : 'N/A'}"),
                                      Divider(thickness: 0.1,), // Divider below the date
                                      Text("Description: ${achievement.description ?? 'N/A'}"),
                                      SizedBox(height: 16), // Add space between description and actions
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context); // Close the dialog
                                          },
                                          child: Text('Close'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );



                    },
                    child: Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Title: ${achievement.title}"),
                                Text("Date: ${achievement.date != null ? DateFormat.yMMMd().format(achievement.date!) : 'N/A'}"),
                              ],
                            ),
                            leading: achievement.image != null
                                ? Container(
                              padding: EdgeInsets.all(4), // Add padding
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5), // Add border radius
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5), // Apply border radius
                                child: Image.file(
                                  achievement.image!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                                : Container(), // Show the selected image
                            // Show the selected image
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 200, // Set the desired height for the image
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                                                  child: achievement.image != null
                                                      ? Image.file(
                                                    achievement.image!,
                                                    fit: BoxFit.cover,
                                                  )
                                                      : Placeholder(), // Placeholder if no image available
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Title: ${achievement.title}"),
                                                    Text("Date: ${achievement.date != null ? DateFormat.yMMMd().format(achievement.date!) : 'N/A'}"),
                                                    Divider(thickness: 0.1,), // Divider below the date
                                                    Text("Description: ${achievement.description ?? 'N/A'}"),
                                                    SizedBox(height: 16), // Add space between description and actions
                                                    Align(
                                                      alignment: Alignment.centerRight,
                                                      child: TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(context); // Close the dialog
                                                        },
                                                        child: Text('Close'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete_forever),
                                  onPressed: () {
                                    removeAchievement(achievement);
                                  },
                                ),
                              ],
                            ),
                          ),

                          Divider(thickness: 0.1,), // Add a divider below the ListTile
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Text("Description: ${achievement.description ?? 'N/A'}"),
                          ), // Display the description below the divider
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),


              // Achievement title, date, description, and Add Achievement Button
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7, top: 10, bottom: 5),
                    child: Text("Title *", style: TextStyle(fontSize: 16)),
                  ),
                  TextFormField(
                    controller: achievementNameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      hintText: "Enter the title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null; // Return null if validation succeeds
                    },
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 7, top: 10, bottom: 5),
                    child: Text("Date", style: TextStyle(fontSize: 16)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            final pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now(),
                              builder: (BuildContext context, Widget? child) {
                                return Theme(
                                  data: ThemeData.light(), // Change this to change the theme
                                  child: child ?? Container(),
                                );
                              },
                            );

                            if (pickedDate != null) {
                              setState(() {
                                selectedDate = pickedDate;
                              });
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedDate != null
                                      ? DateFormat.yMMMd().format(selectedDate!)
                                      : 'Select Date',
                                  style: TextStyle(fontSize: 16, color: Colors.grey),
                                ),
                                Icon(Icons.date_range),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                  Padding(
                    padding: EdgeInsets.only(left: 7, top: 10, bottom: 5),
                    child: Text("Description", style: TextStyle(fontSize: 16)),
                  ),
                  TextFormField(
                    controller: achievementDescriptionController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      hintText: "Enter the description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 7, top: 10, bottom: 5),
                    child: Text("Award", style: TextStyle(fontSize: 16)),
                  ),
                  GestureDetector(
                    onTap: () {
                      _getImage();
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: _image == null
                            ? Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.grey,
                        )
                            : Image.file(
                          _image!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              // Add Achievement Button
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 5, right: 18),
                  child: ElevatedButton(
                    onPressed: () {
                      if (achievementNameController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter a title')),
                        );
                      } else {
                        addAchievement();
                      }
                    },
                    child: Text("Add Achievement"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addAchievement() {
    if (achievementNameController.text.isNotEmpty &&
        achievementDescriptionController.text.isNotEmpty) {
      setState(() {
        achievementList.add(AchievementData(
          title: achievementNameController.text,
          description: achievementDescriptionController.text,
          date: selectedDate,
          image: _image,
        ));
        // Clear text controllers after adding achievement
        achievementNameController.clear();
        achievementDescriptionController.clear();
        selectedDate = null; // Clear the selected date
        _image = null; // Clear the selected image
      });
    }
  }

  void removeAchievement(AchievementData achievement) {
    setState(() {
      achievementList.remove(achievement);
    });
  }

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }
}

class AchievementData {
  final String? title;
  final String? description;
  final DateTime? date;
  final File? image;

  AchievementData({this.title, this.description, this.date, this.image});
}
