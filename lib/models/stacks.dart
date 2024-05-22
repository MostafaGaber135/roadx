import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchSpecificTechnologies() async {
  final response =
      await http.get(Uri.parse('https://api.roadx.site/public/api/stacks/1'));

  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    List<dynamic> selectedTechnologies = [];
    for (var track in data['tracks']) {
      for (var tech in track['technologies']) {
        var techName =
            tech['name'].toString().toLowerCase(); 
        if (techName == 'html' ||
            techName == 'css' ||
            techName == 'java script') {
          selectedTechnologies.add({
            'name': tech['name'],
            'description': tech['description'],
          });
        }
      }
    }
    return selectedTechnologies;
  } else {
    throw Exception('Failed to load data');
  }
}
