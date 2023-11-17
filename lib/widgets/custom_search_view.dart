import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onClear;

  CustomSearchBar({required this.controller, required this.onClear});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.055,
      decoration: BoxDecoration(
        color: Colors.grey.shade200, // Gray background color
        borderRadius: BorderRadius.circular(20.0), // Rounded corners
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.search), // Search icon on the left
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Please enter name', // Hint text in the center
                border: InputBorder.none, // No border
              ),
            ),
          ),
          GestureDetector(
            onTap: onClear,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.clear), // Clear (cross) icon on the right
            ),
          ),
        ],
      ),
    );
  }
}
