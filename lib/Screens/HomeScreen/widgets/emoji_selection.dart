import 'package:flutter/material.dart';


class EmojiOption extends StatelessWidget {
  final String emoji;
  final Function(String) onEmojiSelected;

  EmojiOption(this.emoji, this.onEmojiSelected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onEmojiSelected(emoji);
      },
      child: Text(
        emoji,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}


