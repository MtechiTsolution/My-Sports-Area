import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ShareOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              // Handle WhatsApp share
            },
            icon: Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle Facebook share
            },
            icon: Icon(
              FontAwesomeIcons.facebook,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle Instagram share
            },
            icon: Icon(
              FontAwesomeIcons.instagram,
              color: Colors.pink,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle LinkedIn share
            },
            icon: Icon(
              FontAwesomeIcons.linkedin,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle Copy Link
            },
            icon: Icon(
              FontAwesomeIcons.link,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

