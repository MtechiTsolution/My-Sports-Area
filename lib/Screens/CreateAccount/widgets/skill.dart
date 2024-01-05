import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/CreateAccount/widgets/sabwidgets/_addskill.dart';
import 'package:my_sports_app/Utils/them.dart';

import '../../../Utils/size_utils.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();

  void onAddSkill() {}
}

class _SkillState extends State<Skill> {
  String? selectedGame; // Declare the selectedGame variable
  String? selectRank;
  String? selectskilllevel;
  String? positioningame;

  List<String> games = ['Football', 'Hand ball', 'Basket ball','Rug bay'];
  List<String> position = ['Forward', 'Gol keeper', 'Striker'];
  List<String> rank = ['Senior', 'Junior', 'Beginner'];
  List<String> level = ['Level 1', 'Level 2', 'Level 3'];

  List<String> descriptions = [];
  List<SkillData> skills = [];
  TextEditingController skillNameController = TextEditingController();
  TextEditingController skillLevelController = TextEditingController();
  TextEditingController skillDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return
      SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Theme.of(context).colorScheme.background, // Updated line
              body: Form(
                  //key: _formKey,
                  child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
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
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select a game";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
//Position in game
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Position in game",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  DropdownButtonFormField<String>(
                                    value: positioningame,
                                    onChanged: (value) {
                                      setState(() {
                                        positioningame = value;
                                      });
                                    },
                                    items: position.map<DropdownMenuItem<String>>((String position) {
                                      return DropdownMenuItem<String>(
                                        value: position,
                                        child: Text(position),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Select the position in game",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green),
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select a position";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
//Rank in game
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Rank in game",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  DropdownButtonFormField<String>(
                                    value: selectRank,
                                    onChanged: (value) {
                                      setState(() {
                                        selectRank = value;
                                      });
                                    },
                                    items: rank.map<DropdownMenuItem<String>>((String game) {
                                      return DropdownMenuItem<String>(
                                        value: game,
                                        child: Text(game),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Select rank",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select a rank";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
// number of goal
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Number of goals",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  TextFormField(
                                    autofocus: false,
                                    // controller: controller
                                    //     .lastNameController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Enter Number of Goals",
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
                                        return "Please enter valid goal";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
//cards yellow others

                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: getPadding(left: 7, top: 10, bottom: 5),
                                          child: Text(
                                            "Yellow cards",
                                            style: labelText.Lebl_Text(isDarkMode),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: getPadding(left: 7, top: 10, bottom: 5),
                                          child: Text(
                                            "Red cards",
                                            style: labelText.Lebl_Text(isDarkMode),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child:
                                          TextFormField(
                                            autofocus: false,
                                            // controller: controller
                                            //     .lastNameController,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(15),
                                              hintText: "No.of Yellow cards",
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
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child:
                                          TextFormField(
                                            autofocus: false,
                                            // controller: controller
                                            //     .lastNameController,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(15),
                                              hintText: "No.of  Red cards",
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
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

//Skill name

                            // Display Added Skills
                            for (int i = 0; i < skills.length; i++)
                              Card(
                                elevation: 4,
                                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Skill section",
                                      style: labelText.Lebl_Text(isDarkMode)
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: getPadding(all: 20),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [

                                                Text(
                                                  "Skill: ${skills[i].name}",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 8), // Add some spacing between the skill name and level
                                                Text("Level: ${skills[i].level ?? 'N/A'}"),
                                                SizedBox(height: 8),
                                                Text("Description: ${skills[i].skilldesc ?? 'N/A'}"),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            right: 0,

                                            child: IconButton(
                                              icon: Icon(Icons.delete_forever), // Use the close icon or any other delete icon you prefer
                                              onPressed: () {
                                                setState(() {
                                                  skills.removeAt(i);
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                            //Skill name
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Skill Name
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Skill Name",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: skillNameController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Enter the skill name",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),

                                  // Skill Level
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Skill Level",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  DropdownButtonFormField<String>(
                                    value: null, // Set the initial value to null
                                    onChanged: (value) {},
                                    items: level.map<DropdownMenuItem<String>>((String game) {
                                      return DropdownMenuItem<String>(
                                        value: game,
                                        child: Text(game),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Select skill Level",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                  ),

                                  //skill description
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Description",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.1,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.greenlight),
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.greenlight,
                                    ),
                                    child: TextFormField(
                                      controller: skillDescriptionController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(5),
                                        hintText: "Enter the skill description",
                                        hintStyle: HintText.hint_Text(isDarkMode),
                                        labelStyle: TextStyle(color: Colors.blue), // Change label text color (if any)
                                        // If you want to change the text color while typing, you can use the style property
                                        border: InputBorder.none,
                                      ),
                                      keyboardType: TextInputType.multiline, // Allow multiple lines
                                      maxLines: null, // Set maxLines to null for unlimited lines or a specific number
                                      textInputAction: TextInputAction.newline,
                                      style: InputText.Input_Text(isDarkMode), // Change text color
                                      // Allow the user to create new lines
                                    ),
                                  ),


                                ],
                              ),
                            ),

                            // Add Skill Button
                            Padding(
                                padding: getPadding(left: 15, top: 5, right: 18),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Validate and add skill
                                    if (skillNameController.text.isNotEmpty & skillDescriptionController.text.isNotEmpty) {
                                      setState(() {
                                        skills.add(SkillData(
                                          name: skillNameController.text,
                                          level: null, // Set the initial level to null
                                          skilldesc: skillDescriptionController.text
                                        ));
                                        // Reset controllers
                                        skillNameController.clear();
                                        skillLevelController.clear();
                                      });
                                    }
                                  },
                                  child: Text("Add Skill"),
                                ),
                            ),


                          ])))));
  }
  //
  // _SkillState(this.level);
  //
  //
  //


  void onTapNext() {}
}
class SkillData {
  String name;
  String? level; // Assuming level can be nullable, modify as needed
  String? skilldesc;

  SkillData({required this.name, this.level,this.skilldesc});
}



