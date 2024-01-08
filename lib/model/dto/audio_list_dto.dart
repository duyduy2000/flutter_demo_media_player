import 'package:json_annotation/json_annotation.dart';
import '../../../common/commons.dart';

part 'audio_list_dto.g.dart';

@JsonSerializable()
class AudioListDto {
  AudioListDto({
    this.count,
    this.previous,
    this.next,
    this.results,
  });

  num? count;
  String? previous;
  String? next;
  List<_Results>? results;

  factory AudioListDto.fromJson(JsonMap json) => _$AudioListDtoFromJson(json);

  JsonMap toJson() => _$AudioListDtoToJson(this);
}

@JsonSerializable()
class _Results {
  _Results({
    this.id,
    this.url,
    this.name,
    this.tags,
    this.description,
    this.created,
    this.type,
    this.filesize,
    this.duration,
    this.username,
    this.previews,
    this.numDownloads,
    this.avgRating,
    this.distanceToTarget,
  });

  num? id;
  String? url;
  String? name;
  List<String>? tags;
  String? description;
  String? created;
  String? type;
  num? filesize;
  num? duration;
  String? username;
  _Previews? previews;
  @JsonKey(name: "num_downloads")
  num? numDownloads;
  @JsonKey(name: "avg_rating")
  num? avgRating;
  @JsonKey(name: "distance_to_target")
  num? distanceToTarget;

  factory _Results.fromJson(JsonMap json) => _$ResultsFromJson(json);

  JsonMap toJson() => _$ResultsToJson(this);
}

@JsonSerializable()
class _Previews {
  _Previews({
    this.previewhqmp3,
    this.previewhqogg,
    this.previewlqmp3,
    this.previewlqogg,
  });

  @JsonKey(name: "preview-hq-mp3")
  String? previewhqmp3;
  @JsonKey(name: "preview-hq-ogg")
  String? previewhqogg;
  @JsonKey(name: "preview-lq-mp3")
  String? previewlqmp3;
  @JsonKey(name: "preview-lq-ogg")
  String? previewlqogg;

  factory _Previews.fromJson(JsonMap json) => _$PreviewsFromJson(json);

  JsonMap toJson() => _$PreviewsToJson(this);
}
