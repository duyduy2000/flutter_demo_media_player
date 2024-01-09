import '../../../common/commons.dart';

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

  AudioListDto.fromJson(JsonMap json) {
    count = json['count'];
    previous = json['previous'];
    next = json['next'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(_Results.fromJson(v));
      });
    }
  }

  JsonMap toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['previous'] = previous;
    map['next'] = next;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class _Results {
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

  num? numDownloads;
  num? avgRating;
  num? distanceToTarget;

  _Results.fromJson(JsonMap json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    description = json['description'];
    created = json['created'];
    type = json['type'];
    filesize = json['filesize'];
    duration = json['duration'];
    username = json['username'];
    previews = json['previews'] != null ? _Previews.fromJson(json['previews']) : null;
    numDownloads = json['num_downloads'];
    avgRating = json['avg_rating'];
    distanceToTarget = json['distance_to_target'];
  }

  JsonMap toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['url'] = url;
    map['name'] = name;
    map['tags'] = tags;
    map['description'] = description;
    map['created'] = created;
    map['type'] = type;
    map['filesize'] = filesize;
    map['duration'] = duration;
    map['username'] = username;
    if (previews != null) {
      map['previews'] = previews?.toJson();
    }
    map['num_downloads'] = numDownloads;
    map['avg_rating'] = avgRating;
    map['distance_to_target'] = distanceToTarget;
    return map;
  }
}

class _Previews {
  String? previewhqmp3;
  String? previewhqogg;
  String? previewlqmp3;
  String? previewlqogg;

  _Previews.fromJson(JsonMap json) {
    previewhqmp3 = json['preview-hq-mp3'];
    previewhqogg = json['preview-hq-ogg'];
    previewlqmp3 = json['preview-lq-mp3'];
    previewlqogg = json['preview-lq-ogg'];
  }

  JsonMap toJson() {
    final map = <String, dynamic>{};
    map['preview-hq-mp3'] = previewhqmp3;
    map['preview-hq-ogg'] = previewhqogg;
    map['preview-lq-mp3'] = previewlqmp3;
    map['preview-lq-ogg'] = previewlqogg;
    return map;
  }
}
