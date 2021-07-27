class Post {
  String text = "";
  int likes = 0;
  String author = "Mosam Patel";
  bool liked = false;

  Post(this.text, this.author);
  void likePost() {
    liked = !liked;
    if (liked)
      likes++;
    else
      likes--;
  }
}
