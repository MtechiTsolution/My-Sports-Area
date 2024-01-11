import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showIosDialoge(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Center(
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CupertinoActivityIndicator(),
        ),
      ),
    ),
  );
}

showSnakbar(BuildContext context,
    {text = 'something went wrong...', color = Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 2),
      content: Text(text),
      backgroundColor: color,
    ),
  );
}
