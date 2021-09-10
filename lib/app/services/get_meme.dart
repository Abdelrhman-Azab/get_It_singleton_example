import 'dart:convert';

import 'package:get_it_example/app/meme_model.dart';
import 'package:http/http.dart' as http;

class GetMeme {
  GetMeme() {
    print("NEW GET MEME OBJECT");
  }
  String memeUrl = "";

  Future<Meme> getRandomMeme() async {
    http.Response json =
        await http.get(Uri.parse('https://some-random-api.ml/meme'));
    return Meme.fromJson(jsonDecode(json.body));
  }
}
