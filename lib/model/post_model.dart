class PostModel {
  String name;
  String postImage;
  String profileImage;
  bool liked;
  int like;
  String caption;

  PostModel({
    required this.profileImage,
    required this.like,
    required this.liked,
    required this.name,
    required this.caption,
    required this.postImage,
  });
}
