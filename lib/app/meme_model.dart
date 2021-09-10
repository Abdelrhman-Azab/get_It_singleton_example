import 'dart:convert';

class Meme {
  String? image;
  String? caption;
  Meme({required this.caption, required this.image});

  Meme.fromJson(jsonData) {
    image = jsonData['image'];
    caption = jsonData['caption'];
  }
}
