import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:catbreeds/src/models/cat/data_cat.dart';
import 'package:catbreeds/src/models/serialization/serializers.dart';

part 'cat.g.dart';

abstract class Cat implements Built<Cat, CatBuilder> {
  
  factory Cat([void Function(CatBuilder) updates]) = _$Cat;
  Cat._();

  String get id;
  
  String get url;

  BuiltList<Datacat> get breeds;

  Object? toJson() {
    return serializers.serializeWith(Cat.serializer, this);
  }

  static Cat? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Cat.serializer, json);
  }

  static Serializer<Cat> get serializer => _$catSerializer;
}
