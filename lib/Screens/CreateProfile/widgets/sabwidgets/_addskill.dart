import 'package:flutter/material.dart';

import '../../../../Utils/size_utils.dart';
import '../skill.dart';

import 'package:my_sports_app/Utils/them.dart';

class SkillAdd extends StatefulWidget {
  final List<SkillData> skills;
  final Function onAddSkill;

  SkillAdd({
    required this.skills,
    required this.onAddSkill,
  });

  @override
  State<SkillAdd> createState() => SkillAddState();
}

class SkillAddState extends State<SkillAdd> {
  List<String> level = ['Level 1', 'Level 2', 'Level 3'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(left: 15, top: 5, right: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int i = 0; i < widget.skills.length; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildInputField(
                  label: "Skill Name",
                  value: widget.skills[i].name,
                  onChanged: (value) => widget.skills[i].name = value!,
                ),
                buildInputField(
                  label: "Skill Level",
                  items: level,
                  value: widget.skills[i].level,
                  onChanged: (value) => widget.skills[i].level = value!,
                ),
              ],
            ),
          // + Button
          ElevatedButton(
            onPressed: () {
              widget.onAddSkill();
            },
            child: Text("+ Add Skill"),
          ),
        ],
      ),
    );
  }

  Widget buildInputField({
    required String label,
    List<String>? items,
    String? value,
    required Function(String?) onChanged,
  }) {
    return Padding(
      padding: getPadding(
          left: 0, top: 5, right: 0), // Adjusted padding for skill section
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(left: 7, top: 10, bottom: 5),
            child: Text(
              label,
              style: labelText.Lebl_Text(
                  false), // Set isDarkMode to false for simplicity
            ),
          ),
          if (items != null)
            DropdownButtonFormField<String>(
              value: value,
              onChanged: (value) => onChanged(value),
              items: items.map<DropdownMenuItem<String>>((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                hintText: "Select $label",
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please select a $label";
                }
                return null;
              },
            ),
        ],
      ),
    );
  }
}
