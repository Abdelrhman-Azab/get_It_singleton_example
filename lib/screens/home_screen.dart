import 'package:flutter/material.dart';
import 'package:get_it_example/app/meme_model.dart';
import 'package:get_it_example/app/services/get_meme.dart';
import 'package:get_it_example/locator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imageUrl = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            //myMemeSingleton: every time this code rebuilds will make only one object from GetMeme class and use it everytime
            //myMemeDefault : every time this code rebuilds will make a new class from GetMeme class
            //check it by commenting myMemeSingleton line and use default and check print function and then comment default and use singleton and check
            Meme myMemeSingleton = await locator.get<GetMeme>().getRandomMeme();
            Meme myMemeDefault = await GetMeme().getRandomMeme();
            setState(() {
              imageUrl = myMemeDefault.image!;
            });
          },
          child: Text("get"),
        ),
        appBar: AppBar(
          title: Text("Meme"),
        ),
        body: Center(
            child: imageUrl == ""
                ? Container()
                : Image.network(imageUrl.toString())));
  }
}
