class Post {
  String title;
  String text;
  final bool liked;

  Post({required this.title, required this.text, this.liked = false});
}
