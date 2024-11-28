import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageViewerScreen extends StatefulWidget {
  final List<ImageModel> images;
  final int initialIndex;

  const ImageViewerScreen({
    Key? key,
    required this.images,
    required this.initialIndex,
  }) : super(key: key);

  @override
  State<ImageViewerScreen> createState() => _ImageViewerScreenState();
}

class _ImageViewerScreenState extends State<ImageViewerScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Viewer"),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          final image = widget.images[index];
          return InteractiveViewer(
            child: Image.network(image.downloadUrl, fit: BoxFit.contain),
          );
        },
      ),
    );
  }
}
