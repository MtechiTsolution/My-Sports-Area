// ignore_for_file: deprecated_member_use

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/HomeScreen/widgets/post_item.dart';
import 'package:my_sports_app/Screens/HomeScreen/widgets/share_option_links.dart';

import '../../../Utils/image_constant.dart';
import '../../../Utils/size_utils.dart';
import '../../../localization/en_us/en_us_translations.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import 'comments.dart';
import 'emoji_selection.dart';

class Video_item extends StatefulWidget {
  const Video_item({super.key});

  @override
  State<Video_item> createState() => _Video_itemState();
}

class _Video_itemState extends State<Video_item> {

  String selectedEmoji = "👍"; // Default emoji
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




  late VideoPlayerController _videoPlayerController,
      _videoPlayerController2,
      _videoPlayerController3;

  late CustomVideoPlayerController _customVideoPlayerController;
  late CustomVideoPlayerWebController _customVideoPlayerWebController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
  const CustomVideoPlayerSettings(showSeekButtons: true);

  final CustomVideoPlayerWebSettings _customVideoPlayerWebSettings =
  CustomVideoPlayerWebSettings(
    src: longVideo,
  );

  @override
  void initState() {
    super.initState();

    // ignore: deprecated_member_use
    _videoPlayerController = VideoPlayerController.network(
      longVideo,
    )..initialize().then((value) => setState(() {}));
    _videoPlayerController2 = VideoPlayerController.network(video240);
    _videoPlayerController3 = VideoPlayerController.network(video480);
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: _customVideoPlayerSettings,
      additionalVideoSources: {
        "240p": _videoPlayerController2,
        "480p": _videoPlayerController3,
        "720p": _videoPlayerController,
      },
    );

    _customVideoPlayerWebController = CustomVideoPlayerWebController(
      webVideoPlayerSettings: _customVideoPlayerWebSettings,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  void _showEmojiOptions() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          content: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EmojiOption("😊", _selectEmoji),
                  EmojiOption("❤️", _selectEmoji),
                  EmojiOption("😂", _selectEmoji),
                  EmojiOption("👍", _selectEmoji),
                  EmojiOption("🎉", _selectEmoji),
                  EmojiOption("😎", _selectEmoji),
                  EmojiOption("😡", _selectEmoji),
                  // Add more emoji options as needed
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  void _playAudio() {
    audioPlayer.play('https://example.com/audio.mp3' as Source); // Replace with your audio file URL
  }
  void _selectEmoji(String emoji) {
    setState(() {
      selectedEmoji = emoji;
    });
    Navigator.pop(context); // Close the dialog after selecting emoji
    _playAudio;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: getPadding(left: 24, right: 24, top: 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  padding: getPadding(left: 9, top: 4, bottom: 4),
                  child: Text(enUs["lbl_alnassr"]!,
                      style: CustomTextStyles.titleSmallInter)),
              Spacer(),
              CustomImageView(
                  svgPath: ImageConstant.imgSignal,
                  height: getVerticalSize(6),
                  width: getHorizontalSize(22),
                  margin: getMargin(top: 9, bottom: 11))
            ])),
        Container(
            width: getHorizontalSize(338),
            margin: getMargin(left: 25, top: 5, right: 30),
            child: Text(enUs["msg_lorem_ipsum_dolor2"]!,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall)),
 //video player
        Container(
            height: getVerticalSize(278),
            width: double.maxFinite,
            margin: getMargin(top: 10),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              kIsWeb
                  ? Expanded(
                child: CustomVideoPlayerWeb(
                  customVideoPlayerWebController:
                  _customVideoPlayerWebController,
                ),
              )
                  : CustomVideoPlayer(
                customVideoPlayerController: _customVideoPlayerController,
              ),
            ])),


 //like,comment,share
        Padding(
            padding: getPadding(left: 36, top: 18, right: 42),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onLongPress: _showEmojiOptions,
                    child: Stack(
                      children: [
                        Text(
                          selectedEmoji,
                          style: TextStyle(fontSize: 23),
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
      ],
    );
  }
}


String videoUrlLandscape =
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
String videoUrlPortrait =
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4';
String longVideo =
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

String video720 =
    "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4";

String video480 =
    "https://www.sample-videos.com/video123/mp4/480/big_buck_bunny_480p_10mb.mp4";

String video240 =
    "https://www.sample-videos.com/video123/mp4/240/big_buck_bunny_240p_10mb.mp4";




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




