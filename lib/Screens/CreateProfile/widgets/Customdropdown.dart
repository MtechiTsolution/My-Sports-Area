import 'package:flutter/material.dart';

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
