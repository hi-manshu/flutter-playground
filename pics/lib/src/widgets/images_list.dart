import 'package:flutter/material.dart';
import 'package:pics/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Image.network(images[index].url),
        );
      },
    );
  }
}
