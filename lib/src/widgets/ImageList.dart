import 'package:flutter/material.dart';
import '../models/ImageJsonModel.dart';

class ImageList extends StatelessWidget {
  final List<ImageJsonModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Image.network(images[index].url);
      },
    );
  }
}
