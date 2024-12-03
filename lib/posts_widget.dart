import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget{
  String ownerName;
  String ownerProfilePicture;
  String postTime;
  String postText;
  int likesCount;
  int commentsCount;

  PostsWidget(
      {required this.ownerName, required this.ownerProfilePicture, required this.postTime,
        required this.postText, required this.likesCount, required this.commentsCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// bar of post
        Container(
          margin: EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset("assets/images/user blue.png",
              width: 50,
              height: 50,),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(ownerName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      Text(postTime,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                        ),
                      ),

                      SizedBox(width: 5,),

                      Icon(
                        Icons.public,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 200,),
              Icon(Icons.more_horiz, size: 30,),
              SizedBox(width: 20),
              Icon(Icons.highlight_remove, size: 30,),

            ],
          ),
        ),

        /// postText
        Container(
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 18),
          alignment: Alignment.centerLeft,
          child: Text(postText,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
          ),
        ),

        SizedBox(height: 20,),

        /// react&comment
        Container(

          margin: EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset("assets/images/like.png",
                width: 25,
                height: 25,),
              Image.asset("assets/images/love.png",
                width: 22,
                height: 22,),
              SizedBox(width: 2,),
              Image.asset("assets/images/wow.png",
                width: 22,
                height: 22,),
              SizedBox(width: 5,),
              Text("${likesCount} ",
                style: TextStyle(
                    color: Colors.black ,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(width: 180,),
              Text("${commentsCount} Comments",
                style: TextStyle(
                    color: Colors.black ,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),),
            ],
          ),
        ),

        /// single like&comment&share
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Image.asset("assets/images/single like.png",
                  width: 30,
                  height: 30,
                color: Colors.black,),
                SizedBox(width: 8,),
                Text("Like",
                  style: TextStyle(
                      color: Colors.black ,
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/single comment1.png",
                  width: 30,
                  height: 30,),
                SizedBox(width: 8,),
                Text("Comment",
                  style: TextStyle(
                      color: Colors.black ,
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/share.png",
                  width: 30,
                  height: 30,),
                SizedBox(width: 8,),
                Text("Share",
                  style: TextStyle(
                      color: Colors.black ,
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }

}