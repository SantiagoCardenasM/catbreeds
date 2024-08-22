 import 'package:catbreeds/src/datasource/the_cat_data_source.dart';
import 'package:catbreeds/src/models/cat/cat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() {

  final client = CatDataSource();
  const limit = 10;
  const page = 0;

  setUpAll(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await dotenv.load(fileName: '.env');
  });

  test('Verify query cats', () async {

    /// [ARRANGE]
    final paramsSearch = {
      'has_breeds': '1',
      'order': 'RANDOM',
      'page': page.toString(),
      'limit': limit.toString(),
    };

    /// [ACTION]
    final validation = await client.getCats(paramsSearch: paramsSearch);

    /// [ASSERT]
    expect(validation, isA<List<Cat>>());
    expect(validation.isNotEmpty, true);
    expect(validation.length, limit);   
     
  });


}