class Posts {
  String ownerName;
  String ownerProfilePicture;
  String postTime;
  String postText;
  int likesCount;
  int commentsCount;

  Posts(
      {required this.ownerName, required this.ownerProfilePicture, required this.postTime,
        required this.postText, required this.likesCount, required this.commentsCount});

}