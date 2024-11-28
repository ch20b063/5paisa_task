import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/image_bloc.dart';
import '../components/image_card.dart';
import 'image_viewer_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageBloc = BlocProvider.of<ImageBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Image Gallery"),
      ),
      body: BlocBuilder<ImageBloc, ImageState>(
        builder: (context, state) {
          if (state.isLoading && state.images.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.hasError) {
            return Center(child: Text("Failed to load images"));
          }

          return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.pixels ==
                  notification.metrics.maxScrollExtent) {
                imageBloc.add(LoadImages());
              }
              return true;
            },
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemCount: state.images.length,
              itemBuilder: (context, index) {
                final image = state.images[index];
                return ImageCard(
                  image: image,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ImageViewerScreen(
                          images: state.images,
                          initialIndex: index,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
