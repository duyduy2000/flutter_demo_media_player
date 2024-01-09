import 'dart:core';

class Audio {
  const Audio({
    required this.id,
    required this.url,
    required this.name,
    required this.tags,
    required this.description,
    required this.type,
    required this.duration,
    required this.created,
    required this.username,
    required this.downloadNumber,
    required this.averageRating,
    required this.previewHqMp3,
  });

  final int id;
  final String url;
  final String name;
  final List<String> tags;
  final String description;
  final String type;
  final double duration;
  final String created;
  final String username;
  final int downloadNumber;
  final double averageRating;
  final String previewHqMp3;

  @override
  String toString() {
    return "Track (\n"
        "id = $id,\n"
        "url = $url,\n"
        "name = $name,\n"
        "tags = $tags,\n"
        "description = $description,\n"
        "type = $type,\n"
        "duration = $duration,\n"
        "created = $created,\n"
        "username = $username,\n"
        "downloadNumber = $downloadNumber,\n"
        "averageRating = $averageRating,\n"
        "previewHqMp3 = $previewHqMp3,\n"
        ")\n";
  }
}
