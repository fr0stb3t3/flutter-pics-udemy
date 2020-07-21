import 'package:flutter/material.dart';
import '../models/ImageJsonModel.dart';

class ImageList extends StatelessWidget {
  final List<ImageJsonModel> images;

  ImageList(this.images);

  Widget paddedImage(ImageJsonModel rawImage) {
    return Padding(
      child: Image.network(rawImage.url),
      padding: EdgeInsets.only(bottom: 10.0),
    );
  }

  Widget imageAndTitleColumn(ImageJsonModel image) {
    return Column(
      children: <Widget>[paddedImage(image), Text(image.title)],
    );
  }

  Widget buildImageBuilder(ImageJsonModel image) {
    return Container(
      // child: Image.network(image.url),
      child: imageAndTitleColumn(image),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple[300],
          width: 5.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImageBuilder(images[index]);
      },
    );
  }
}
