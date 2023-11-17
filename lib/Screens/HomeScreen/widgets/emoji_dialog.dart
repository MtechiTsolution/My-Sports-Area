import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class EmojiPickerDialog extends StatelessWidget {
  final Function(String) onEmojiSelected;

  EmojiPickerDialog({required this.onEmojiSelected});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      content: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.035,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EmojiOption("😊", onEmojiSelected),
              EmojiOption("❤️", onEmojiSelected),
              EmojiOption("😂", onEmojiSelected),
              EmojiOption("👍", onEmojiSelected),
              EmojiOption("🎉", onEmojiSelected),
              EmojiOption("😎", onEmojiSelected),
              EmojiOption("😡", onEmojiSelected),
              // Add more emoji options as needed
            ],
          ),
        ),
      ),
    );
  }
}

class EmojiOption extends StatelessWidget {
  final String emoji;
  final Function(String) onSelect;

  EmojiOption(this.emoji, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(emoji);
      },
      child: Text(
        emoji,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
