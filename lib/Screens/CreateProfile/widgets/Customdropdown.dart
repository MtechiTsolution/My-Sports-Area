import 'package:flutter/material.dart';
import 'package:my_sports_app/Utils/them.dart';
import 'package:my_sports_app/models/Position.dart';
import 'package:my_sports_app/models/Sport.dart';

class CustomDropDown extends StatelessWidget {
  //final Widget icon;
  final EdgeInsets margin;
  final String? hintText;
  final TextStyle? hintStyle;
  final List<String> items;
  final ValueChanged<String?>? onChanged;

  CustomDropDown({
    //required this.icon,
    required this.margin,
    required this.hintText,
    required this.hintStyle,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black), // Customize the border
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          //icon,
          Expanded(
            child: DropdownButton<String>(
              isExpanded: true,
              onChanged: onChanged,
              value: null, // Replace with the selected value variable
              hint: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  hintText ?? '',
                  style: hintStyle,
                ),
              ),
              items: items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(value),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDropDownField extends StatelessWidget {
  //final Widget icon;
  final selectvalue;
  final String? hintText;
  final TextStyle? hintStyle;
  final List items;
  final ValueChanged? onChanged;

  CustomDropDownField({
    //required this.icon,
    this.selectvalue,
    required this.hintText,
    this.hintStyle,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selectvalue,
      onChanged: onChanged,
      items: items.map<DropdownMenuItem>((game) {
        return DropdownMenuItem(
          value: game,
          child: Text(game.runtimeType == Sport
              ? game.sportName
              : game.runtimeType == Position
                  ? game.name
                  : game),
        );
      }).toList(),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.pink),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.pink),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.pink),
        ),
      ),
      validator: (value) {
        if (value == null || false) {
          return "Please select";
        } else if (value.runtimeType == String && value.isEmpty) {
          return "Please select";
        }

        // You can add additional validation if needed

        return null;
      },
    );
  }
}
