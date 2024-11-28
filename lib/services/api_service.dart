import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/image_model.dart';

class ApiService {
  final String baseUrl = "https://picsum.photos/v2/list";

  Future<List<ImageModel>> fetchImages(int page, int limit) async {
    final response = await http.get(Uri.parse("$baseUrl?page=$page&limit=$limit"));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((e) => ImageModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load images");
    }
  }
}