import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget{
  String ownerName;
  String ownerProfilePicture;
  String image;

  StoryWidget({required this.ownerName, required this.ownerProfilePicture,
    required this.image});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(            // to make all width as same
      child: Stack(
        children: [
          Image.asset(image),
          /// user icon
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.blue), // adjust the border width and color as needed
              shape: BoxShape.circle, // make the container a circle
            ),
            child: CircleAvatar(

              radius: 17,
              backgroundImage: AssetImage("assets/images/user blue.png"),
            ),
          ),
          /// owner name
          Container(
            margin: EdgeInsets.all(8),
            alignment: Alignment.bottomLeft,
            child: Text(ownerName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
            ),
          )
        ],
      ),
    );
  }

}