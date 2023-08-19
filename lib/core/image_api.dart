import 'package:dio/dio.dart';

import 'image_model.dart';

class ImageApi{
  final _api = Dio(BaseOptions(baseUrl: 'https://picsum.photos/v2/'));

  Future<List<ImageModel>> images({
    int page = 0,
    int limit = 20
  })async{
    final response = await _api.get('list?page=$page&limit=$limit');
    return (response.data as List).map((e) => ImageModel.fromJson(e)).toList();
  }

}