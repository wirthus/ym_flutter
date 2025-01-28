//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advert_buy_remove_purchase_points_dto.g.dart';

/// AdvertBuyRemovePurchasePointsDto
///
/// Properties:
/// * [purchasePointIds]
@BuiltValue()
abstract class AdvertBuyRemovePurchasePointsDto
    implements
        Built<AdvertBuyRemovePurchasePointsDto,
            AdvertBuyRemovePurchasePointsDtoBuilder> {
  @BuiltValueField(wireName: r'purchasePointIds')
  BuiltList<num> get purchasePointIds;

  AdvertBuyRemovePurchasePointsDto._();

  factory AdvertBuyRemovePurchasePointsDto(
          [void updates(AdvertBuyRemovePurchasePointsDtoBuilder b)]) =
      _$AdvertBuyRemovePurchasePointsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdvertBuyRemovePurchasePointsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdvertBuyRemovePurchasePointsDto> get serializer =>
      _$AdvertBuyRemovePurchasePointsDtoSerializer();
}

class _$AdvertBuyRemovePurchasePointsDtoSerializer
    implements PrimitiveSerializer<AdvertBuyRemovePurchasePointsDto> {
  @override
  final Iterable<Type> types = const [
    AdvertBuyRemovePurchasePointsDto,
    _$AdvertBuyRemovePurchasePointsDto
  ];

  @override
  final String wireName = r'AdvertBuyRemovePurchasePointsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdvertBuyRemovePurchasePointsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'purchasePointIds';
    yield serializers.serialize(
      object.purchasePointIds,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdvertBuyRemovePurchasePointsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdvertBuyRemovePurchasePointsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'purchasePointIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(num)]),
          ) as BuiltList<num>;
          result.purchasePointIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdvertBuyRemovePurchasePointsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdvertBuyRemovePurchasePointsDtoBuilder();
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
