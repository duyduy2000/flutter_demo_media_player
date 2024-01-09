import 'package:flutter_demo_mp/model/dto/audio_list_dto.dart';

import '../model/audio.dart';

extension Mapper on AudioListDto {
  List<Audio> toModel() => results!
      .map((it) => Audio(
            id: it.id!.toInt(),
            url: it.url!,
            name: it.name!,
            tags: it.tags!,
            description: it.description!,
            type: it.type!,
            duration: it.duration!.toDouble(),
            created: it.created!,
            username: it.username!,
            downloadNumber: it.numDownloads!.toInt(),
            averageRating: it.avgRating!.toDouble(),
            previewHqMp3: it.previews!.previewhqmp3!,
          ))
      .toList();
}
