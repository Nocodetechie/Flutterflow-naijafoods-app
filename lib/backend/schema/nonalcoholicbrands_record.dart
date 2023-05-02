import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nonalcoholicbrands_record.g.dart';

abstract class NonalcoholicbrandsRecord
    implements
        Built<NonalcoholicbrandsRecord, NonalcoholicbrandsRecordBuilder> {
  static Serializer<NonalcoholicbrandsRecord> get serializer =>
      _$nonalcoholicbrandsRecordSerializer;

  String? get name;

  String? get image;

  int? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(NonalcoholicbrandsRecordBuilder builder) =>
      builder
        ..name = ''
        ..image = ''
        ..price = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Nonalcoholicbrands')
          : FirebaseFirestore.instance.collectionGroup('Nonalcoholicbrands');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Nonalcoholicbrands').doc();

  static Stream<NonalcoholicbrandsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NonalcoholicbrandsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NonalcoholicbrandsRecord._();
  factory NonalcoholicbrandsRecord(
          [void Function(NonalcoholicbrandsRecordBuilder) updates]) =
      _$NonalcoholicbrandsRecord;

  static NonalcoholicbrandsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNonalcoholicbrandsRecordData({
  String? name,
  String? image,
  int? price,
}) {
  final firestoreData = serializers.toFirestore(
    NonalcoholicbrandsRecord.serializer,
    NonalcoholicbrandsRecord(
      (n) => n
        ..name = name
        ..image = image
        ..price = price,
    ),
  );

  return firestoreData;
}
