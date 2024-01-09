import 'package:dio/dio.dart';

import '../../common/network/key.dart';
import '../dto/dto.dart';

class AudioRepository {
  Dio get dio => Dio(BaseOptions(
        baseUrl: "https://freesound.org/apiv2/",
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ));

  String get _audioInfoFields =>
      "id,url,name,tags,description,created,type,filesize,duration,username,previews,num_downloads,avg_rating";

  Future<AudioListDto?> getSimilarAudio({required int id}) async {
    final response = await dio.get(
      "sounds/$id/similar/",
      queryParameters: {
        "token": apiKey,
        "fields": _audioInfoFields,
      },
    );
    return AudioListDto.fromJson(response.data);

    // try {
    //   final response = await dio.get<AudioListDto>(
    //     "sounds/$id/similar/",
    //     queryParameters: {
    //       "token": apiKey,
    //       "fields": _audioInfoFields,
    //     },
    //   );
    //   return response.data;
    // } on DioException catch (exception) {
    //   if (exception.response != null) {
    //     // The request was made and the server responded with a status code
    //     // that falls out of the range of 2xx and is also not 304.
    //   } else {
    //     // Something happened in setting up or sending the request that triggered an Error
    //   }
    // }
    //
    // return null;
  }
}
