//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_feedback_dto.g.dart';

/// CreateFeedbackDto
///
/// Properties:
/// * [message]
/// * [name]
/// * [contact]
@BuiltValue()
abstract class CreateFeedbackDto
    implements Built<CreateFeedbackDto, CreateFeedbackDtoBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'contact')
  String? get contact;

  CreateFeedbackDto._();

  factory CreateFeedbackDto([void updates(CreateFeedbackDtoBuilder b)]) =
      _$CreateFeedbackDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateFeedbackDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFeedbackDto> get serializer =>
      _$CreateFeedbackDtoSerializer();
}

class _$CreateFeedbackDtoSerializer
    implements PrimitiveSerializer<CreateFeedbackDto> {
  @override
  final Iterable<Type> types = const [CreateFeedbackDto, _$CreateFeedbackDto];

  @override
  final String wireName = r'CreateFeedbackDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFeedbackDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFeedbackDto object, {
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
    required CreateFeedbackDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contact = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFeedbackDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFeedbackDtoBuilder();
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
