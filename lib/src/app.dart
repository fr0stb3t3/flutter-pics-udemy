// I need to import a helper library from flutter, to get content on the screen
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get, Response;
import 'models/ImageJsonModel.dart';
import 'dart:convert';
import 'widgets/ImageList.dart';

String URL = "https://jsonplaceholder.typicode.com/photos/";

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageJsonModel> images = List<ImageJsonModel>();

  void fetchImage() async {
    counter++;
    Response response = await get(URL + '$counter');
    ImageJsonModel imageModel = ImageJsonModel(jsonDecode(response.body));
    setState(
      () => {
        images.add(imageModel),
        counter,
      },
    );
    print(imageModel);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: Text("Lets see some images"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
    // Take that widget and get it on the screen}
  }
}
