import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Technology> fetchTechnology(int technologyId) async {
  final response = await http.get(Uri.parse('https://api.roadx.site/api/technologies/$technologyId'));

  if (response.statusCode == 200) {
    return Technology.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load technology data');
  }
}
class Technology {
  final String name;
  final String shortDescription;
  final String description;
  final List<Video> videos;

  Technology({
    required this.name,
    required this.shortDescription,
    required this.description,
    required this.videos,
  });

  factory Technology.fromJson(Map<String, dynamic> json) {
    return Technology(
      name: json['name'],
      shortDescription: json['short_description'],
      description: json['description'],
      videos: List<Video>.from(json['videos'].map((video) => Video.fromJson(video))),
    );
  }
}

class Video {
  final String name;
  final String instructor;
  final String language;
  final String image;
  final String video;

  Video({
    required this.name,
    required this.instructor,
    required this.language,
    required this.image,
    required this.video,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      name: json['name'],
      instructor: json['instructor'],
      language: json['language'],
      image: json['image'],
      video: json['video'],
    );
  }
}
