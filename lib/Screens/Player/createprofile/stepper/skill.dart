import 'package:flutter/material.dart';



import 'package:flutter/material.dart';

import '../../../../Utils/size_utils.dart';
import '../../../../Utils/them.dart';

class Skill_player extends StatefulWidget {
  const Skill_player({Key? key}) : super(key: key);

  @override
  State<Skill_player> createState() => _Skill_playerState();
}

class _Skill_playerState extends State<Skill_player> {
  List<SkillData> skillList = []; // List to store skill data

  List<String> skillLevels = ['Beginner', 'Intermediate', 'Advanced'];
  String? selectedSkillLevel; // Variable to store the selected skill level



  TextEditingController skillNameController = TextEditingController();
  TextEditingController skillLevelController = TextEditingController();
  TextEditingController skillDescriptionController = TextEditingController();



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
              // Display Added Skills
              Column(
                children: skillList.map((skill) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Stack(
                      children: [
                        ListTile(
                          title: Text("Skill: ${skill.name}"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Level: ${skill.level ?? 'N/A'}"),
                              Text("Description: ${skill.skilldesc ?? 'N/A'}"),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -10,
                          right: -5,
                          child: IconButton(
                            icon: Icon(Icons.delete_forever,size: 18,),
                            onPressed: () {
                              removeSkill(skill);
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),

              // Skill name, level, description, and Add Skill Button
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 7, top: 10, bottom: 5),
                      child: Text("Skill Name *", style: labelText.Lebl_Text(isDarkMode)),
                    ),
                  TextFormField(
                    controller: skillNameController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      hintText: "Enter the skill name",
                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a skill name';
                      }
                      return null; // Return null if validation succeeds
                    },
                  ),


                  Padding(
                      padding: getPadding(left: 7, top: 10, bottom: 5),
                      child: Text("Skill Level", style: labelText.Lebl_Text(isDarkMode)),
                    ),
                  DropdownButtonFormField<String>(
                    value: selectedSkillLevel, // Initialize the selected value
                    onChanged: (newValue) {
                      setState(() {
                        selectedSkillLevel = newValue; // Update the selected value
                      });
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      hintText: "Select the skill level", // Hint text for the dropdown
                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    items: skillLevels.map((level) {
                      return DropdownMenuItem(
                        value: level,
                        child: Text(level),
                      );
                    }).toList(),
                  ),


                  Padding(
                      padding: getPadding(left: 7, top: 10, bottom: 5),
                      child: Text("Description", style: labelText.Lebl_Text(isDarkMode)),
                    ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greenlight),
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.darkLabelColor,
                      ),

                    child: TextFormField(
                      controller: skillDescriptionController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        hintText: "Enter the skill description",
                        hintStyle: HintText.hint_Text(isDarkMode),
                        labelStyle: TextStyle(color: Colors.blue),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),

              // Add Skill Button
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 5, right: 18),
                  child: ElevatedButton(
                    onPressed: () {
                      // Check if skill name is empty
                      if (skillNameController.text.isEmpty) {
                        // Show an error message if skill name is empty
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter a skill name')),
                        );
                      } else {
                        // Add skill if skill name is not empty
                        addSkill();
                      }
                    },
                    child: Text("Add Skill"),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  void addSkill() {
    if (skillNameController.text.isNotEmpty &&
        skillDescriptionController.text.isNotEmpty) {
      setState(() {
        skillList.add(SkillData(
          name: skillNameController.text,
          level: skillLevelController.text,
          skilldesc: skillDescriptionController.text,
        ));
        // Clear text controllers after adding skill
        skillNameController.clear();
        skillLevelController.clear();
        skillDescriptionController.clear();
      });
    }
  }

  void removeSkill(SkillData skill) {
    setState(() {
      skillList.remove(skill);
    });
  }
}

class SkillData {
  final String? name;
  final String? level;
  final String? skilldesc;

  SkillData({this.name, this.level, this.skilldesc});
}



