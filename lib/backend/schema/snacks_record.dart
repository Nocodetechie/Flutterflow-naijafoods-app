import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'snacks_record.g.dart';

abstract class SnacksRecord
    implements Built<SnacksRecord, SnacksRecordBuilder> {
  static Serializer<SnacksRecord> get serializer => _$snacksRecordSerializer;

  String? get name;

  String? get image;

  int? get price;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SnacksRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..price = 0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Snacks');

  static Stream<SnacksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SnacksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SnacksRecord._();
  factory SnacksRecord([void Function(SnacksRecordBuilder) updates]) =
      _$SnacksRecord;

  static SnacksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSnacksRecordData({
  String? name,
  String? image,
  int? price,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    SnacksRecord.serializer,
    SnacksRecord(
      (s) => s
        ..name = name
        ..image = image
        ..price = price
        ..description = description,
    ),
  );

  return firestoreData;
}
