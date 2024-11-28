import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/image_model.dart';
import '../services/api_service.dart';

class ImageState {
  final List<ImageModel> images;
  final bool isLoading;
  final bool hasError;
  final int currentPage;

  ImageState({
    required this.images,
    this.isLoading = false,
    this.hasError = false,
    this.currentPage = 1,
  });

  ImageState copyWith({
    List<ImageModel>? images,
    bool? isLoading,
    bool? hasError,
    int? currentPage,
  }) {
    return ImageState(
      images: images ?? this.images,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}

class ImageEvent {}

class LoadImages extends ImageEvent {}

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ApiService apiService;

  ImageBloc({required this.apiService})
      : super(ImageState(images: [])) {
    on<LoadImages>((event, emit) async {
      if (state.isLoading) return;

      emit(state.copyWith(isLoading: true));
      try {
        final newImages = await apiService.fetchImages(state.currentPage, 20);
        emit(state.copyWith(
          images: [...state.images, ...newImages],
          isLoading: false,
          hasError: false,
          currentPage: state.currentPage + 1,
        ));
      } catch (_) {
        emit(state.copyWith(isLoading: false, hasError: true));
      }
    });
  }
}
