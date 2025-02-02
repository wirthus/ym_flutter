//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ym_api_client/src/model/region_entity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'country_with_regions_entity.g.dart';

/// CountryWithRegionsEntity
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [regions] 
@BuiltValue()
abstract class CountryWithRegionsEntity implements Built<CountryWithRegionsEntity, CountryWithRegionsEntityBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'regions')
  BuiltList<RegionEntity> get regions;

  CountryWithRegionsEntity._();

  factory CountryWithRegionsEntity([void updates(CountryWithRegionsEntityBuilder b)]) = _$CountryWithRegionsEntity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CountryWithRegionsEntityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CountryWithRegionsEntity> get serializer => _$CountryWithRegionsEntitySerializer();
}

class _$CountryWithRegionsEntitySerializer implements PrimitiveSerializer<CountryWithRegionsEntity> {
  @override
  final Iterable<Type> types = const [CountryWithRegionsEntity, _$CountryWithRegionsEntity];

  @override
  final String wireName = r'CountryWithRegionsEntity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CountryWithRegionsEntity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'regions';
    yield serializers.serialize(
      object.regions,
      specifiedType: const FullType(BuiltList, [FullType(RegionEntity)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CountryWithRegionsEntity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CountryWithRegionsEntityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'regions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RegionEntity)]),
          ) as BuiltList<RegionEntity>;
          result.regions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CountryWithRegionsEntity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CountryWithRegionsEntityBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

