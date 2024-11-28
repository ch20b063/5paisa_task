import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageCard extends StatelessWidget {
  final ImageModel image;
  final VoidCallback onTap;

  const ImageCard({Key? key, required this.image, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Image.network(
          image.downloadUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
