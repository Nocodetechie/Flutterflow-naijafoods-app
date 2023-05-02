import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alcoholic_record.g.dart';

abstract class AlcoholicRecord
    implements Built<AlcoholicRecord, AlcoholicRecordBuilder> {
  static Serializer<AlcoholicRecord> get serializer =>
      _$alcoholicRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlcoholicRecordBuilder builder) => builder
    ..name = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Alcoholic');

  static Stream<AlcoholicRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlcoholicRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlcoholicRecord._();
  factory AlcoholicRecord([void Function(AlcoholicRecordBuilder) updates]) =
      _$AlcoholicRecord;

  static AlcoholicRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlcoholicRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    AlcoholicRecord.serializer,
    AlcoholicRecord(
      (a) => a
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}
