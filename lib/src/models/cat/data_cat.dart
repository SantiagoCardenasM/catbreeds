import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:catbreeds/src/models/serialization/serializers.dart';

part 'data_cat.g.dart';

abstract class Datacat implements Built<Datacat, DatacatBuilder> {
  
  factory Datacat([void Function(DatacatBuilder) updates]) = _$Datacat;
  Datacat._();

  String get id;

  String get name;

  @BuiltValueField(wireName: 'cfa_url')
  String? get cfaUrl;

  @BuiltValueField(wireName: 'vetstreet_url')
  String? get vetstreetUrl;

  @BuiltValueField(wireName: 'vcahospitals_url')
  String? get vcahospitalsUrl;

  String get temperament;

  String get origin;

  @BuiltValueField(wireName: 'country_codes')
  String get countryCodes;

  @BuiltValueField(wireName: 'country_code')
  String get countryCode;

  String get description;

  @BuiltValueField(wireName: 'life_span')
  String get lifeSpan;

  int get indoor;

  @BuiltValueField(wireName: 'alt_names')
  String? get altNames;

  int get adaptability;

  @BuiltValueField(wireName: 'affection_level')
  int get affectionLevel;

  @BuiltValueField(wireName: 'child_friendly')
  int get childFriendly;

  @BuiltValueField(wireName: 'dog_friendly')
  int get dogFriendly;

  @BuiltValueField(wireName: 'energy_level')
  int get energyLevel;

  int get grooming;

  @BuiltValueField(wireName: 'health_issues')
  int get healthIssues;

  int get intelligence;

  @BuiltValueField(wireName: 'shedding_level')
  int get sheddingLevel;

  @BuiltValueField(wireName: 'social_needs')
  int get socialNeeds;

  @BuiltValueField(wireName: 'stranger_friendly')
  int get strangerFriendly;

  int get vocalisation;

  int get experimental;

  int get hairless;

  int get natural;

  int get rare;

  int get rex;

  @BuiltValueField(wireName: 'suppressed_tail')
  int get suppressedTail;

  @BuiltValueField(wireName: 'short_legs')
  int get shortLegs;

  @BuiltValueField(wireName: 'wikipedia_url')
  String? get wikipediaUrl;

  int get hypoallergenic;

  Object? toJson() {
    return serializers.serializeWith(Datacat.serializer, this);
  }

  static Datacat? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Datacat.serializer, json);
  }

  static Serializer<Datacat> get serializer => _$datacatSerializer;
}
