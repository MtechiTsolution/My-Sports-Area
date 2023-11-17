// import 'package:flutter/material.dart';
//
// class MessageItem extends StatelessWidget {
//   final String profileImageUrl;
//   final String name;
//   final String lastMessage;
//   final String time;
//
//   MessageItem({
//     required this.profileImageUrl,
//     required this.name,
//     required this.lastMessage,
//     required this.time,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//
//       color: Colors.grey.shade50, // Gray background color
//       elevation: 0.5, // Add elevation for a shadow effect
//       margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Adjust margin as needed
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Row(
//           children: [
//             CircleAvatar(
//               radius: 30.0,
//               backgroundImage: AssetImage(profileImageUrl), // Profile picture
//             ),
//             SizedBox(width: 16), // Add some spacing between profile picture and text
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   Text(
//                     lastMessage,
//                     style: TextStyle(
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text(
//               time,
//               style: TextStyle(
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageItem extends StatelessWidget {
  final String profileImageUrl;
  final String name;
  final String lastMessage;
  final String time;

  MessageItem({
    required this.profileImageUrl,
    required this.name,
    required this.lastMessage,
    required this.time,
  });

  void handleAction(BuildContext context, String action) {
    switch (action) {
      case 'Delete':
      // Handle delete action
        break;
      case 'Share':
      // Handle share action
        break;
      case 'Archive':
      // Handle archive action
        break;
      case 'Save':
      // Handle save action
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(0),
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: (context) => handleAction(context, 'Delete'),
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),

        ],
      ),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            flex: 2,
            onPressed: (context) => handleAction(context, 'Archive'),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive',
          ),
          SlidableAction(
            flex: 2,
            onPressed: (context) => handleAction(context, 'Delete'),
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
        color: Colors.grey.shade50,
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profileImageUrl),
                radius: 30.0,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lastMessage,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
