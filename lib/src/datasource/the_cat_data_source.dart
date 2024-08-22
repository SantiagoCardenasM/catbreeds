import 'dart:convert';
import 'package:catbreeds/src/core/paths/urls_paths.dart';
import 'package:http/http.dart' show Client;
import 'package:catbreeds/src/models/cat/cat.dart';
import 'package:catbreeds/src/core/utils/http_util.dart';


class CatDataSource {

  final  _client = Client();

  Future<List<Cat>> getCats({ 
    required Map<String , String> paramsSearch,
   }) async {

    final url = getUrlhttps( Paths.historyCats, queryParameters: paramsSearch);

    final response = await _client.get( url, headers: getHeaderQuery(),);

    if (response.statusCode == 200) { 

      final listJson = json.decode(response.body) as List<dynamic>;
      if (listJson.isEmpty) return <Cat>[];

      final list = listJson.map((dynamic e) => Cat.fromJson(e as Map<String, dynamic>)!);
      return list.toList();
            
    } else {
      throw Exception('Failed to load cats');
    }

  }


}
