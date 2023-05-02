import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'non_alcoholic_record.g.dart';

abstract class NonAlcoholicRecord
    implements Built<NonAlcoholicRecord, NonAlcoholicRecordBuilder> {
  static Serializer<NonAlcoholicRecord> get serializer =>
      _$nonAlcoholicRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NonAlcoholicRecordBuilder builder) => builder
    ..name = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Non-alcoholic');

  static Stream<NonAlcoholicRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NonAlcoholicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NonAlcoholicRecord._();
  factory NonAlcoholicRecord(
          [void Function(NonAlcoholicRecordBuilder) updates]) =
      _$NonAlcoholicRecord;

  static NonAlcoholicRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNonAlcoholicRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    NonAlcoholicRecord.serializer,
    NonAlcoholicRecord(
      (n) => n
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}
