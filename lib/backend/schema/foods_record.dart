import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'foods_record.g.dart';

abstract class FoodsRecord implements Built<FoodsRecord, FoodsRecordBuilder> {
  static Serializer<FoodsRecord> get serializer => _$foodsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FoodsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Foods');

  static Stream<FoodsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FoodsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FoodsRecord._();
  factory FoodsRecord([void Function(FoodsRecordBuilder) updates]) =
      _$FoodsRecord;

  static FoodsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFoodsRecordData({
  String? name,
  String? description,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    FoodsRecord.serializer,
    FoodsRecord(
      (f) => f
        ..name = name
        ..description = description
        ..image = image,
    ),
  );

  return firestoreData;
}
