import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/HomeScreen/widgets/share_option_links.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import 'comments.dart';
import 'emoji_dialog.dart';
import 'emoji_selection.dart';

class post_item extends StatefulWidget {
  const post_item({super.key});

  @override
  State<post_item> createState() => _post_itemState();
}

class _post_itemState extends State<post_item> {
  String selectedEmoji = "👍"; // Default emoji
  int reactionCount = 10;

  late AudioPlayer audioPlayer; // AudioPlayer instance

  List<FriendItem> friendsList = [
    FriendItem(
      profilePicUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWje_gjVcmi-wks5nTRnW_xv5W2l3MVnk7W1QDcZuhNg&s',
      name: 'Friend 1',
      postLike: 'Player',
    ),
    FriendItem(
     profilePicUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWje_gjVcmi-wks5nTRnW_xv5W2l3MVnk7W1QDcZuhNg&s',
      name: 'Friend 2',
      postLike: 'Coach',
    ),
    FriendItem(
      profilePicUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWje_gjVcmi-wks5nTRnW_xv5W2l3MVnk7W1QDcZuhNg&s',
      name: 'Friend 2',
      postLike: 'Coach',
    ),
    FriendItem(
      profilePicUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWje_gjVcmi-wks5nTRnW_xv5W2l3MVnk7W1QDcZuhNg&s',
      name: 'Friend 3',
      postLike: 'Coach',
    ),
    FriendItem(
      profilePicUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWje_gjVcmi-wks5nTRnW_xv5W2l3MVnk7W1QDcZuhNg&s',
      name: 'Friend 4',
      postLike: 'Coach',
    ),

    // Add more FriendItem objects as needed
  ];

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }
  void _playAudio() {
    audioPlayer.play('https://example.com/audio.mp3' as Source); // Replace with your audio file URL
  }



  void _showEmojiOptions() async {
    String selectedEmoji = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return EmojiPickerDialog(
          onEmojiSelected: (String emoji) {
            Navigator.pop(context, emoji); // Pass the selected emoji back to the caller
          },
        );
      },
    );


    if (selectedEmoji != null) {
      setState(() {
        this.selectedEmoji = selectedEmoji;
        reactionCount++; // Increment the reaction count when a new reaction is selected
      });
      _playAudio();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: getPadding(left: 24, right: 24,top: 0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Image.asset(
                    ImageConstant.imgGroup113, // Set the image path here
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                    padding: getPadding(
                        left: 9, top: 4, bottom: 4),
                    child: Text(enUs["lbl_alnassr"]!,
                        style: CustomTextStyles
                            .titleSmallInter)),
                Spacer(),
                CustomImageView(
                    svgPath: ImageConstant.imgSignal,
                    height: getVerticalSize(6),
                    width: getHorizontalSize(22),
                    margin: getMargin(top: 9, bottom: 11))
              ])),
      Align(
          alignment: Alignment.centerLeft,
          child: Container(
              width: getHorizontalSize(311),
              margin:
              getMargin(left: 25, top: 16, right: 56),
              child: Text(enUs["msg_lorem_ipsum_dolor2"]!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall))),
      CustomImageView(
          imagePath: ImageConstant.imgRectangle6555,
          height: getVerticalSize(262),
          width: getHorizontalSize(393),
          margin: getMargin(top: 12)),
      Padding(
          padding: getPadding(left: 36, top: 18, right: 42),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onLongPress: _showEmojiOptions,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Text(
                            selectedEmoji,
                            style: TextStyle(fontSize: 23),
                          ),
                          SizedBox(width: 8), // Add some spacing between emoji and counter
                          Text(
                            reactionCount.toString(), // Assuming reactionCount is the number of reactions
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1),
                CustomImageView(
                    imagePath: ImageConstant.imgCommentdots1,
                    height: getSize(23),
                    width: getSize(23),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: MediaQuery.of(context).size.height, // Set the desired height
                            width: double.infinity, // Set the desired width, use double.infinity for full width
                            child: Comments(), // Your custom widget content
                          );
                        },
                      );
                    }
                ),
                Spacer(flex: 1),
                CustomImageView(
                  imagePath: ImageConstant.imgSharesquare4,
                  height: getSize(25),
                  width: getSize(25),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: Stack(
                            alignment: Alignment.bottomCenter, // Align items at the bottom of the Stack
                            children: [
                              ListView(
                                children: [
                                  FriendList(friends: friendsList),
                                ],
                              ),
                              ShareOptions(),
                              Positioned(
                                bottom: 50.0, // Adjust the distance from the bottom as needed for the FloatingActionButton
                                right: 30.0, // Adjust the distance from the right as needed for the FloatingActionButton
                                child: FloatingActionButton(
                                  onPressed: () {
                                    // Handle send button press
                                  },
                                  child: Icon(Icons.send),
                                ),
                              ),

                            ],
                          ),
                        );
                      },
                    );
                  },
                )


              ])),

    ],);
  }


}



class FriendList extends StatelessWidget {
  final List<FriendItem> friends;

  FriendList({required this.friends});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: friends.length,
      itemBuilder: (context, index) {
        var friend = friends[index];
        return FriendItemWidget(friend: friend);
      },
    );
  }
}

class FriendItemWidget extends StatefulWidget {
  final FriendItem friend;

  FriendItemWidget({required this.friend});

  @override
  _FriendItemWidgetState createState() => _FriendItemWidgetState();
}

class _FriendItemWidgetState extends State<FriendItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.friend.profilePicUrl),
      ),
      title: Text(widget.friend.name),
      subtitle: Text(widget.friend.postLike),
      trailing: InkWell(
        onTap: () {
          setState(() {
            // Toggle friend selection
            widget.friend.isSelected = !widget.friend.isSelected;
          });
        },
        child: Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.pink,
              width: 2.0,
            ),
          ),
          child: Center(
            child: widget.friend.isSelected
                ? Icon(
              Icons.check,
              size: 18.0,
              color: Colors.pinkAccent,
            )
                : null,
          ),
        ),
      ),
    );
  }
}

class FriendItem {
  final String profilePicUrl;
  final String name;
  final String postLike;
  bool isSelected;

  FriendItem({
    required this.profilePicUrl,
    required this.name,
    required this.postLike,
    this.isSelected = false,
  });
}





