// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_cat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Datacat> _$datacatSerializer = new _$DatacatSerializer();

class _$DatacatSerializer implements StructuredSerializer<Datacat> {
  @override
  final Iterable<Type> types = const [Datacat, _$Datacat];
  @override
  final String wireName = 'Datacat';

  @override
  Iterable<Object?> serialize(Serializers serializers, Datacat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'temperament',
      serializers.serialize(object.temperament,
          specifiedType: const FullType(String)),
      'origin',
      serializers.serialize(object.origin,
          specifiedType: const FullType(String)),
      'country_codes',
      serializers.serialize(object.countryCodes,
          specifiedType: const FullType(String)),
      'country_code',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'life_span',
      serializers.serialize(object.lifeSpan,
          specifiedType: const FullType(String)),
      'indoor',
      serializers.serialize(object.indoor, specifiedType: const FullType(int)),
      'adaptability',
      serializers.serialize(object.adaptability,
          specifiedType: const FullType(int)),
      'affection_level',
      serializers.serialize(object.affectionLevel,
          specifiedType: const FullType(int)),
      'child_friendly',
      serializers.serialize(object.childFriendly,
          specifiedType: const FullType(int)),
      'dog_friendly',
      serializers.serialize(object.dogFriendly,
          specifiedType: const FullType(int)),
      'energy_level',
      serializers.serialize(object.energyLevel,
          specifiedType: const FullType(int)),
      'grooming',
      serializers.serialize(object.grooming,
          specifiedType: const FullType(int)),
      'health_issues',
      serializers.serialize(object.healthIssues,
          specifiedType: const FullType(int)),
      'intelligence',
      serializers.serialize(object.intelligence,
          specifiedType: const FullType(int)),
      'shedding_level',
      serializers.serialize(object.sheddingLevel,
          specifiedType: const FullType(int)),
      'social_needs',
      serializers.serialize(object.socialNeeds,
          specifiedType: const FullType(int)),
      'stranger_friendly',
      serializers.serialize(object.strangerFriendly,
          specifiedType: const FullType(int)),
      'vocalisation',
      serializers.serialize(object.vocalisation,
          specifiedType: const FullType(int)),
      'experimental',
      serializers.serialize(object.experimental,
          specifiedType: const FullType(int)),
      'hairless',
      serializers.serialize(object.hairless,
          specifiedType: const FullType(int)),
      'natural',
      serializers.serialize(object.natural, specifiedType: const FullType(int)),
      'rare',
      serializers.serialize(object.rare, specifiedType: const FullType(int)),
      'rex',
      serializers.serialize(object.rex, specifiedType: const FullType(int)),
      'suppressed_tail',
      serializers.serialize(object.suppressedTail,
          specifiedType: const FullType(int)),
      'short_legs',
      serializers.serialize(object.shortLegs,
          specifiedType: const FullType(int)),
      'hypoallergenic',
      serializers.serialize(object.hypoallergenic,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.cfaUrl;
    if (value != null) {
      result
        ..add('cfa_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vetstreetUrl;
    if (value != null) {
      result
        ..add('vetstreet_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vcahospitalsUrl;
    if (value != null) {
      result
        ..add('vcahospitals_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.altNames;
    if (value != null) {
      result
        ..add('alt_names')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wikipediaUrl;
    if (value != null) {
      result
        ..add('wikipedia_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Datacat deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatacatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cfa_url':
          result.cfaUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vetstreet_url':
          result.vetstreetUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vcahospitals_url':
          result.vcahospitalsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'temperament':
          result.temperament = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'origin':
          result.origin = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'country_codes':
          result.countryCodes = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'country_code':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'life_span':
          result.lifeSpan = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'indoor':
          result.indoor = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'alt_names':
          result.altNames = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adaptability':
          result.adaptability = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'affection_level':
          result.affectionLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'child_friendly':
          result.childFriendly = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'dog_friendly':
          result.dogFriendly = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'energy_level':
          result.energyLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'grooming':
          result.grooming = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'health_issues':
          result.healthIssues = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'intelligence':
          result.intelligence = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'shedding_level':
          result.sheddingLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'social_needs':
          result.socialNeeds = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'stranger_friendly':
          result.strangerFriendly = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'vocalisation':
          result.vocalisation = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'experimental':
          result.experimental = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'hairless':
          result.hairless = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'natural':
          result.natural = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rare':
          result.rare = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rex':
          result.rex = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'suppressed_tail':
          result.suppressedTail = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'short_legs':
          result.shortLegs = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'wikipedia_url':
          result.wikipediaUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hypoallergenic':
          result.hypoallergenic = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Datacat extends Datacat {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? cfaUrl;
  @override
  final String? vetstreetUrl;
  @override
  final String? vcahospitalsUrl;
  @override
  final String temperament;
  @override
  final String origin;
  @override
  final String countryCodes;
  @override
  final String countryCode;
  @override
  final String description;
  @override
  final String lifeSpan;
  @override
  final int indoor;
  @override
  final String? altNames;
  @override
  final int adaptability;
  @override
  final int affectionLevel;
  @override
  final int childFriendly;
  @override
  final int dogFriendly;
  @override
  final int energyLevel;
  @override
  final int grooming;
  @override
  final int healthIssues;
  @override
  final int intelligence;
  @override
  final int sheddingLevel;
  @override
  final int socialNeeds;
  @override
  final int strangerFriendly;
  @override
  final int vocalisation;
  @override
  final int experimental;
  @override
  final int hairless;
  @override
  final int natural;
  @override
  final int rare;
  @override
  final int rex;
  @override
  final int suppressedTail;
  @override
  final int shortLegs;
  @override
  final String? wikipediaUrl;
  @override
  final int hypoallergenic;

  factory _$Datacat([void Function(DatacatBuilder)? updates]) =>
      (new DatacatBuilder()..update(updates))._build();

  _$Datacat._(
      {required this.id,
      required this.name,
      this.cfaUrl,
      this.vetstreetUrl,
      this.vcahospitalsUrl,
      required this.temperament,
      required this.origin,
      required this.countryCodes,
      required this.countryCode,
      required this.description,
      required this.lifeSpan,
      required this.indoor,
      this.altNames,
      required this.adaptability,
      required this.affectionLevel,
      required this.childFriendly,
      required this.dogFriendly,
      required this.energyLevel,
      required this.grooming,
      required this.healthIssues,
      required this.intelligence,
      required this.sheddingLevel,
      required this.socialNeeds,
      required this.strangerFriendly,
      required this.vocalisation,
      required this.experimental,
      required this.hairless,
      required this.natural,
      required this.rare,
      required this.rex,
      required this.suppressedTail,
      required this.shortLegs,
      this.wikipediaUrl,
      required this.hypoallergenic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Datacat', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Datacat', 'name');
    BuiltValueNullFieldError.checkNotNull(
        temperament, r'Datacat', 'temperament');
    BuiltValueNullFieldError.checkNotNull(origin, r'Datacat', 'origin');
    BuiltValueNullFieldError.checkNotNull(
        countryCodes, r'Datacat', 'countryCodes');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, r'Datacat', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        description, r'Datacat', 'description');
    BuiltValueNullFieldError.checkNotNull(lifeSpan, r'Datacat', 'lifeSpan');
    BuiltValueNullFieldError.checkNotNull(indoor, r'Datacat', 'indoor');
    BuiltValueNullFieldError.checkNotNull(
        adaptability, r'Datacat', 'adaptability');
    BuiltValueNullFieldError.checkNotNull(
        affectionLevel, r'Datacat', 'affectionLevel');
    BuiltValueNullFieldError.checkNotNull(
        childFriendly, r'Datacat', 'childFriendly');
    BuiltValueNullFieldError.checkNotNull(
        dogFriendly, r'Datacat', 'dogFriendly');
    BuiltValueNullFieldError.checkNotNull(
        energyLevel, r'Datacat', 'energyLevel');
    BuiltValueNullFieldError.checkNotNull(grooming, r'Datacat', 'grooming');
    BuiltValueNullFieldError.checkNotNull(
        healthIssues, r'Datacat', 'healthIssues');
    BuiltValueNullFieldError.checkNotNull(
        intelligence, r'Datacat', 'intelligence');
    BuiltValueNullFieldError.checkNotNull(
        sheddingLevel, r'Datacat', 'sheddingLevel');
    BuiltValueNullFieldError.checkNotNull(
        socialNeeds, r'Datacat', 'socialNeeds');
    BuiltValueNullFieldError.checkNotNull(
        strangerFriendly, r'Datacat', 'strangerFriendly');
    BuiltValueNullFieldError.checkNotNull(
        vocalisation, r'Datacat', 'vocalisation');
    BuiltValueNullFieldError.checkNotNull(
        experimental, r'Datacat', 'experimental');
    BuiltValueNullFieldError.checkNotNull(hairless, r'Datacat', 'hairless');
    BuiltValueNullFieldError.checkNotNull(natural, r'Datacat', 'natural');
    BuiltValueNullFieldError.checkNotNull(rare, r'Datacat', 'rare');
    BuiltValueNullFieldError.checkNotNull(rex, r'Datacat', 'rex');
    BuiltValueNullFieldError.checkNotNull(
        suppressedTail, r'Datacat', 'suppressedTail');
    BuiltValueNullFieldError.checkNotNull(shortLegs, r'Datacat', 'shortLegs');
    BuiltValueNullFieldError.checkNotNull(
        hypoallergenic, r'Datacat', 'hypoallergenic');
  }

  @override
  Datacat rebuild(void Function(DatacatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatacatBuilder toBuilder() => new DatacatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Datacat &&
        id == other.id &&
        name == other.name &&
        cfaUrl == other.cfaUrl &&
        vetstreetUrl == other.vetstreetUrl &&
        vcahospitalsUrl == other.vcahospitalsUrl &&
        temperament == other.temperament &&
        origin == other.origin &&
        countryCodes == other.countryCodes &&
        countryCode == other.countryCode &&
        description == other.description &&
        lifeSpan == other.lifeSpan &&
        indoor == other.indoor &&
        altNames == other.altNames &&
        adaptability == other.adaptability &&
        affectionLevel == other.affectionLevel &&
        childFriendly == other.childFriendly &&
        dogFriendly == other.dogFriendly &&
        energyLevel == other.energyLevel &&
        grooming == other.grooming &&
        healthIssues == other.healthIssues &&
        intelligence == other.intelligence &&
        sheddingLevel == other.sheddingLevel &&
        socialNeeds == other.socialNeeds &&
        strangerFriendly == other.strangerFriendly &&
        vocalisation == other.vocalisation &&
        experimental == other.experimental &&
        hairless == other.hairless &&
        natural == other.natural &&
        rare == other.rare &&
        rex == other.rex &&
        suppressedTail == other.suppressedTail &&
        shortLegs == other.shortLegs &&
        wikipediaUrl == other.wikipediaUrl &&
        hypoallergenic == other.hypoallergenic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, cfaUrl.hashCode);
    _$hash = $jc(_$hash, vetstreetUrl.hashCode);
    _$hash = $jc(_$hash, vcahospitalsUrl.hashCode);
    _$hash = $jc(_$hash, temperament.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, countryCodes.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, lifeSpan.hashCode);
    _$hash = $jc(_$hash, indoor.hashCode);
    _$hash = $jc(_$hash, altNames.hashCode);
    _$hash = $jc(_$hash, adaptability.hashCode);
    _$hash = $jc(_$hash, affectionLevel.hashCode);
    _$hash = $jc(_$hash, childFriendly.hashCode);
    _$hash = $jc(_$hash, dogFriendly.hashCode);
    _$hash = $jc(_$hash, energyLevel.hashCode);
    _$hash = $jc(_$hash, grooming.hashCode);
    _$hash = $jc(_$hash, healthIssues.hashCode);
    _$hash = $jc(_$hash, intelligence.hashCode);
    _$hash = $jc(_$hash, sheddingLevel.hashCode);
    _$hash = $jc(_$hash, socialNeeds.hashCode);
    _$hash = $jc(_$hash, strangerFriendly.hashCode);
    _$hash = $jc(_$hash, vocalisation.hashCode);
    _$hash = $jc(_$hash, experimental.hashCode);
    _$hash = $jc(_$hash, hairless.hashCode);
    _$hash = $jc(_$hash, natural.hashCode);
    _$hash = $jc(_$hash, rare.hashCode);
    _$hash = $jc(_$hash, rex.hashCode);
    _$hash = $jc(_$hash, suppressedTail.hashCode);
    _$hash = $jc(_$hash, shortLegs.hashCode);
    _$hash = $jc(_$hash, wikipediaUrl.hashCode);
    _$hash = $jc(_$hash, hypoallergenic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Datacat')
          ..add('id', id)
          ..add('name', name)
          ..add('cfaUrl', cfaUrl)
          ..add('vetstreetUrl', vetstreetUrl)
          ..add('vcahospitalsUrl', vcahospitalsUrl)
          ..add('temperament', temperament)
          ..add('origin', origin)
          ..add('countryCodes', countryCodes)
          ..add('countryCode', countryCode)
          ..add('description', description)
          ..add('lifeSpan', lifeSpan)
          ..add('indoor', indoor)
          ..add('altNames', altNames)
          ..add('adaptability', adaptability)
          ..add('affectionLevel', affectionLevel)
          ..add('childFriendly', childFriendly)
          ..add('dogFriendly', dogFriendly)
          ..add('energyLevel', energyLevel)
          ..add('grooming', grooming)
          ..add('healthIssues', healthIssues)
          ..add('intelligence', intelligence)
          ..add('sheddingLevel', sheddingLevel)
          ..add('socialNeeds', socialNeeds)
          ..add('strangerFriendly', strangerFriendly)
          ..add('vocalisation', vocalisation)
          ..add('experimental', experimental)
          ..add('hairless', hairless)
          ..add('natural', natural)
          ..add('rare', rare)
          ..add('rex', rex)
          ..add('suppressedTail', suppressedTail)
          ..add('shortLegs', shortLegs)
          ..add('wikipediaUrl', wikipediaUrl)
          ..add('hypoallergenic', hypoallergenic))
        .toString();
  }
}

class DatacatBuilder implements Builder<Datacat, DatacatBuilder> {
  _$Datacat? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _cfaUrl;
  String? get cfaUrl => _$this._cfaUrl;
  set cfaUrl(String? cfaUrl) => _$this._cfaUrl = cfaUrl;

  String? _vetstreetUrl;
  String? get vetstreetUrl => _$this._vetstreetUrl;
  set vetstreetUrl(String? vetstreetUrl) => _$this._vetstreetUrl = vetstreetUrl;

  String? _vcahospitalsUrl;
  String? get vcahospitalsUrl => _$this._vcahospitalsUrl;
  set vcahospitalsUrl(String? vcahospitalsUrl) =>
      _$this._vcahospitalsUrl = vcahospitalsUrl;

  String? _temperament;
  String? get temperament => _$this._temperament;
  set temperament(String? temperament) => _$this._temperament = temperament;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _countryCodes;
  String? get countryCodes => _$this._countryCodes;
  set countryCodes(String? countryCodes) => _$this._countryCodes = countryCodes;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _lifeSpan;
  String? get lifeSpan => _$this._lifeSpan;
  set lifeSpan(String? lifeSpan) => _$this._lifeSpan = lifeSpan;

  int? _indoor;
  int? get indoor => _$this._indoor;
  set indoor(int? indoor) => _$this._indoor = indoor;

  String? _altNames;
  String? get altNames => _$this._altNames;
  set altNames(String? altNames) => _$this._altNames = altNames;

  int? _adaptability;
  int? get adaptability => _$this._adaptability;
  set adaptability(int? adaptability) => _$this._adaptability = adaptability;

  int? _affectionLevel;
  int? get affectionLevel => _$this._affectionLevel;
  set affectionLevel(int? affectionLevel) =>
      _$this._affectionLevel = affectionLevel;

  int? _childFriendly;
  int? get childFriendly => _$this._childFriendly;
  set childFriendly(int? childFriendly) =>
      _$this._childFriendly = childFriendly;

  int? _dogFriendly;
  int? get dogFriendly => _$this._dogFriendly;
  set dogFriendly(int? dogFriendly) => _$this._dogFriendly = dogFriendly;

  int? _energyLevel;
  int? get energyLevel => _$this._energyLevel;
  set energyLevel(int? energyLevel) => _$this._energyLevel = energyLevel;

  int? _grooming;
  int? get grooming => _$this._grooming;
  set grooming(int? grooming) => _$this._grooming = grooming;

  int? _healthIssues;
  int? get healthIssues => _$this._healthIssues;
  set healthIssues(int? healthIssues) => _$this._healthIssues = healthIssues;

  int? _intelligence;
  int? get intelligence => _$this._intelligence;
  set intelligence(int? intelligence) => _$this._intelligence = intelligence;

  int? _sheddingLevel;
  int? get sheddingLevel => _$this._sheddingLevel;
  set sheddingLevel(int? sheddingLevel) =>
      _$this._sheddingLevel = sheddingLevel;

  int? _socialNeeds;
  int? get socialNeeds => _$this._socialNeeds;
  set socialNeeds(int? socialNeeds) => _$this._socialNeeds = socialNeeds;

  int? _strangerFriendly;
  int? get strangerFriendly => _$this._strangerFriendly;
  set strangerFriendly(int? strangerFriendly) =>
      _$this._strangerFriendly = strangerFriendly;

  int? _vocalisation;
  int? get vocalisation => _$this._vocalisation;
  set vocalisation(int? vocalisation) => _$this._vocalisation = vocalisation;

  int? _experimental;
  int? get experimental => _$this._experimental;
  set experimental(int? experimental) => _$this._experimental = experimental;

  int? _hairless;
  int? get hairless => _$this._hairless;
  set hairless(int? hairless) => _$this._hairless = hairless;

  int? _natural;
  int? get natural => _$this._natural;
  set natural(int? natural) => _$this._natural = natural;

  int? _rare;
  int? get rare => _$this._rare;
  set rare(int? rare) => _$this._rare = rare;

  int? _rex;
  int? get rex => _$this._rex;
  set rex(int? rex) => _$this._rex = rex;

  int? _suppressedTail;
  int? get suppressedTail => _$this._suppressedTail;
  set suppressedTail(int? suppressedTail) =>
      _$this._suppressedTail = suppressedTail;

  int? _shortLegs;
  int? get shortLegs => _$this._shortLegs;
  set shortLegs(int? shortLegs) => _$this._shortLegs = shortLegs;

  String? _wikipediaUrl;
  String? get wikipediaUrl => _$this._wikipediaUrl;
  set wikipediaUrl(String? wikipediaUrl) => _$this._wikipediaUrl = wikipediaUrl;

  int? _hypoallergenic;
  int? get hypoallergenic => _$this._hypoallergenic;
  set hypoallergenic(int? hypoallergenic) =>
      _$this._hypoallergenic = hypoallergenic;

  DatacatBuilder();

  DatacatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _cfaUrl = $v.cfaUrl;
      _vetstreetUrl = $v.vetstreetUrl;
      _vcahospitalsUrl = $v.vcahospitalsUrl;
      _temperament = $v.temperament;
      _origin = $v.origin;
      _countryCodes = $v.countryCodes;
      _countryCode = $v.countryCode;
      _description = $v.description;
      _lifeSpan = $v.lifeSpan;
      _indoor = $v.indoor;
      _altNames = $v.altNames;
      _adaptability = $v.adaptability;
      _affectionLevel = $v.affectionLevel;
      _childFriendly = $v.childFriendly;
      _dogFriendly = $v.dogFriendly;
      _energyLevel = $v.energyLevel;
      _grooming = $v.grooming;
      _healthIssues = $v.healthIssues;
      _intelligence = $v.intelligence;
      _sheddingLevel = $v.sheddingLevel;
      _socialNeeds = $v.socialNeeds;
      _strangerFriendly = $v.strangerFriendly;
      _vocalisation = $v.vocalisation;
      _experimental = $v.experimental;
      _hairless = $v.hairless;
      _natural = $v.natural;
      _rare = $v.rare;
      _rex = $v.rex;
      _suppressedTail = $v.suppressedTail;
      _shortLegs = $v.shortLegs;
      _wikipediaUrl = $v.wikipediaUrl;
      _hypoallergenic = $v.hypoallergenic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Datacat other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Datacat;
  }

  @override
  void update(void Function(DatacatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Datacat build() => _build();

  _$Datacat _build() {
    final _$result = _$v ??
        new _$Datacat._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Datacat', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Datacat', 'name'),
            cfaUrl: cfaUrl,
            vetstreetUrl: vetstreetUrl,
            vcahospitalsUrl: vcahospitalsUrl,
            temperament: BuiltValueNullFieldError.checkNotNull(
                temperament, r'Datacat', 'temperament'),
            origin: BuiltValueNullFieldError.checkNotNull(
                origin, r'Datacat', 'origin'),
            countryCodes: BuiltValueNullFieldError.checkNotNull(
                countryCodes, r'Datacat', 'countryCodes'),
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, r'Datacat', 'countryCode'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Datacat', 'description'),
            lifeSpan: BuiltValueNullFieldError.checkNotNull(
                lifeSpan, r'Datacat', 'lifeSpan'),
            indoor: BuiltValueNullFieldError.checkNotNull(
                indoor, r'Datacat', 'indoor'),
            altNames: altNames,
            adaptability: BuiltValueNullFieldError.checkNotNull(
                adaptability, r'Datacat', 'adaptability'),
            affectionLevel: BuiltValueNullFieldError.checkNotNull(
                affectionLevel, r'Datacat', 'affectionLevel'),
            childFriendly: BuiltValueNullFieldError.checkNotNull(
                childFriendly, r'Datacat', 'childFriendly'),
            dogFriendly: BuiltValueNullFieldError.checkNotNull(dogFriendly, r'Datacat', 'dogFriendly'),
            energyLevel: BuiltValueNullFieldError.checkNotNull(energyLevel, r'Datacat', 'energyLevel'),
            grooming: BuiltValueNullFieldError.checkNotNull(grooming, r'Datacat', 'grooming'),
            healthIssues: BuiltValueNullFieldError.checkNotNull(healthIssues, r'Datacat', 'healthIssues'),
            intelligence: BuiltValueNullFieldError.checkNotNull(intelligence, r'Datacat', 'intelligence'),
            sheddingLevel: BuiltValueNullFieldError.checkNotNull(sheddingLevel, r'Datacat', 'sheddingLevel'),
            socialNeeds: BuiltValueNullFieldError.checkNotNull(socialNeeds, r'Datacat', 'socialNeeds'),
            strangerFriendly: BuiltValueNullFieldError.checkNotNull(strangerFriendly, r'Datacat', 'strangerFriendly'),
            vocalisation: BuiltValueNullFieldError.checkNotNull(vocalisation, r'Datacat', 'vocalisation'),
            experimental: BuiltValueNullFieldError.checkNotNull(experimental, r'Datacat', 'experimental'),
            hairless: BuiltValueNullFieldError.checkNotNull(hairless, r'Datacat', 'hairless'),
            natural: BuiltValueNullFieldError.checkNotNull(natural, r'Datacat', 'natural'),
            rare: BuiltValueNullFieldError.checkNotNull(rare, r'Datacat', 'rare'),
            rex: BuiltValueNullFieldError.checkNotNull(rex, r'Datacat', 'rex'),
            suppressedTail: BuiltValueNullFieldError.checkNotNull(suppressedTail, r'Datacat', 'suppressedTail'),
            shortLegs: BuiltValueNullFieldError.checkNotNull(shortLegs, r'Datacat', 'shortLegs'),
            wikipediaUrl: wikipediaUrl,
            hypoallergenic: BuiltValueNullFieldError.checkNotNull(hypoallergenic, r'Datacat', 'hypoallergenic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
