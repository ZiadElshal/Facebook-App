import 'package:assignment2_part1/posts.dart';
import 'package:assignment2_part1/posts_widget.dart';
import 'package:assignment2_part1/story.dart';
import 'package:assignment2_part1/story_widget.dart';
import 'package:assignment2_part1/text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";
  List<Story> storiesList = [];
  List<Posts> postsList = [];

  HomeScreen(){
    createStoriesList();
    createPostsList();
  }

  void createStoriesList(){
    for(int i = 0; i <= 100; i++){
      storiesList.add(Story(ownerName: "owner", ownerProfilePicture: "${Icon(Icons.person)}",
          image: "assets/images/facebookStory.jpg"));
    }
  }

  void createPostsList(){
    for(int i = 0; i <= 100; i++){
      postsList.add(Posts(ownerName: "owner", ownerProfilePicture: "${Icon(Icons.person)}",
          postTime: "1h", postText: "Hallo.. Programmers!",
          likesCount: postsList.length, commentsCount: postsList.length));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("facebook",
          style: TextStyle(
              color: Colors.blue,
            fontSize: 28,
            fontWeight: FontWeight.w800
          ),
        ),
        actions: [
          SizedBox(width: 10,),
          Icon(Icons.add_circle, color: Colors.black, size: 30,),
          SizedBox(width: 15,),
          Icon(Icons.search, color: Colors.black , size: 30),
          SizedBox(width: 15,),
          Image.asset("assets/images/messenger icon.png",
          width: 26,
          height: 26,),
          SizedBox(width: 15,),
        ],

      ),

      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// par of notification
              Container(
                margin: EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 3, // adjust the height of the underline
                          width: 35, // adjust the width of the underline
                          color: Colors.blue, // adjust the color of the underline
                          margin: const EdgeInsets.only(top: 35), // adjust the position of the underline
                        ),
                        Icon(Icons.home_rounded, size: 35, color: Colors.blue,),
                      ],
                    ),
                    Icon(Icons.ondemand_video_rounded, size: 35),
                    Icon(Icons.people_outline, size: 35),
                    Icon(Icons.shopping_bag_outlined, size: 35),
                    Icon(Icons.notifications_outlined, size: 35),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.grey), // adjust the border width and color as needed
                        shape: BoxShape.circle, // make the container a circle
                      ),
                      child: CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage("assets/images/user blue.png"),
                      ),
                    )
                  ],
                ),
              ),


              /// color space
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.black12,
              ),

              /// par of add post
              Container(
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset("assets/images/user blue.png",
                      width: 50,
                      height: 50,),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white70,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23),
                            ),
                            hintText: "What's on your mind?",
                            hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Icon(Icons.image, color: Colors.green, size: 30,),
                  ],
                ),
              ),

              SizedBox(height: 2,),

              /// color space
              Container(
                width: double.infinity,
                height: 5,
                color: Colors.black12,
              ),
              SizedBox(height: 15,),

              /// story
              Container(
                alignment: Alignment.topCenter,
                height: 180,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(3),
                  ),
                    itemBuilder: (context, index){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: StoryWidget(ownerName: storiesList[index].ownerName,
                            ownerProfilePicture: storiesList[index].ownerProfilePicture
                            , image: storiesList[index].image),
                      );
                    },
                  shrinkWrap: true,
                  itemCount: storiesList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),

              SizedBox(height: 15,),
              /// color space
              Container(
                width: double.infinity,
                height: 5,
                color: Colors.black12,
              ),

              /// posts
              ListView.separated(
                separatorBuilder: (context, index) => Container(
                  color: Colors.black12,
                  height: 5,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                itemBuilder: (context, index){
                  return PostsWidget(ownerName: postsList[index].ownerName,
                      ownerProfilePicture: postsList[index].ownerProfilePicture,
                      postTime: postsList[index].postTime,
                      postText: postsList[index].postText,
                      likesCount: postsList[index].likesCount,
                      commentsCount: postsList[index].commentsCount);
                },
                shrinkWrap: true,

                // to make posts not scroll alone and scroll with all screen
                physics: NeverScrollableScrollPhysics(),

                itemCount: postsList.length,
                scrollDirection: Axis.vertical,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
