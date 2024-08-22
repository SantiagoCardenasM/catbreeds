import 'package:flutter_test/flutter_test.dart';
import 'package:catbreeds/src/models/cat/cat.dart';
import 'package:catbreeds/src/models/cat/data_cat.dart';
import 'package:built_collection/built_collection.dart';

void main() {
  
  group('Cat Tests', () {
    final json = {
      "id": "abc123",
      "url": "https://example.com/cat.jpg",
      "breeds": [
        {
          "id": "bali",
          "name": "Balinese",
          "cfa_url": "http://cfa.org/Breeds/BreedsAB/Balinese.aspx",
          "vetstreet_url": "http://www.vetstreet.com/cats/balinese",
          "vcahospitals_url": "https://vcahospitals.com/know-your-pet/cat-breeds/balinese",
          "temperament": "Affectionate, Intelligent, Playful",
          "origin": "United States",
          "country_codes": "US",
          "country_code": "US",
          "description": "Balinese are curious, outgoing, intelligent cats with excellent communication skills.",
          "life_span": "10 - 15",
          "indoor": 0,
          "alt_names": "Long-haired Siamese",
          "adaptability": 5,
          "affection_level": 5,
          "child_friendly": 4,
          "dog_friendly": 5,
          "energy_level": 5,
          "grooming": 3,
          "health_issues": 3,
          "intelligence": 5,
          "shedding_level": 3,
          "social_needs": 5,
          "stranger_friendly": 5,
          "vocalisation": 5,
          "experimental": 0,
          "hairless": 0,
          "natural": 0,
          "rare": 0,
          "rex": 0,
          "suppressed_tail": 0,
          "short_legs": 0,
          "wikipedia_url": "https://en.wikipedia.org/wiki/Balinese_(cat)",
          "hypoallergenic": 1,
          "reference_image_id": "13MkvUreZ"
        }
      ]
    };

    test('should deserialize JSON to Cat object', () {
      final cat = Cat.fromJson(json);
      expect(cat, isNotNull);
      expect(cat?.id, 'abc123');
      expect(cat?.url, 'https://example.com/cat.jpg');
      expect(cat?.breeds, isNotEmpty);
      expect(cat?.breeds.first.name, 'Balinese');
    });

    test('should serialize Cat object to JSON', () {
      final cat = Cat.fromJson(json);
      final serialized = cat?.toJson();
      expect(serialized, isNotNull);
      expect(serialized, json);
    });

    test('should handle empty breeds list', () {
      final cat = Cat(
        (b) => b
        ..id = 'empty_breeds'
        ..url = 'https://example.com/empty.jpg'
        ..breeds = ListBuilder<Datacat>()
      );
      expect(cat.breeds, isEmpty);
    });

    test('should have correct default values', () {
      final datacat = Datacat((b) => b
        ..id = 'test_id'
        ..name = 'test_name'
        ..temperament = 'calm'
        ..origin = 'Testland'
        ..countryCodes = 'TT'
        ..countryCode = 'TT'
        ..description = 'Test description'
        ..lifeSpan = '12 - 14'
        ..indoor = 1
        ..adaptability = 4
        ..affectionLevel = 4
        ..childFriendly = 3
        ..dogFriendly = 3
        ..energyLevel = 4
        ..grooming = 2
        ..healthIssues = 1
        ..intelligence = 4
        ..sheddingLevel = 2
        ..socialNeeds = 3
        ..strangerFriendly = 4
        ..vocalisation = 3
        ..experimental = 0
        ..hairless = 0
        ..natural = 0
        ..rare = 0
        ..rex = 0
        ..suppressedTail = 0
        ..shortLegs = 0
        ..hypoallergenic = 1);

      final cat = Cat((b) => b
        ..id = 'test_cat_id'
        ..url = 'https://example.com/test.jpg'
        ..breeds = ListBuilder<Datacat>([datacat]));

      expect(cat.id, 'test_cat_id');
      expect(cat.url, 'https://example.com/test.jpg');
      expect(cat.breeds, isNotEmpty);
      expect(cat.breeds.first.name, 'test_name');
    });
  });
}
