import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alcoholicbrands_record.g.dart';

abstract class AlcoholicbrandsRecord
    implements Built<AlcoholicbrandsRecord, AlcoholicbrandsRecordBuilder> {
  static Serializer<AlcoholicbrandsRecord> get serializer =>
      _$alcoholicbrandsRecordSerializer;

  String? get name;

  int? get price;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(AlcoholicbrandsRecordBuilder builder) =>
      builder
        ..name = ''
        ..price = 0
        ..image = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Alcoholicbrands')
          : FirebaseFirestore.instance.collectionGroup('Alcoholicbrands');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Alcoholicbrands').doc();

  static Stream<AlcoholicbrandsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlcoholicbrandsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlcoholicbrandsRecord._();
  factory AlcoholicbrandsRecord(
          [void Function(AlcoholicbrandsRecordBuilder) updates]) =
      _$AlcoholicbrandsRecord;

  static AlcoholicbrandsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlcoholicbrandsRecordData({
  String? name,
  int? price,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    AlcoholicbrandsRecord.serializer,
    AlcoholicbrandsRecord(
      (a) => a
        ..name = name
        ..price = price
        ..image = image,
    ),
  );

  return firestoreData;
}
