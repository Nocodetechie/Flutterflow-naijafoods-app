import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dishes_record.g.dart';

abstract class DishesRecord
    implements Built<DishesRecord, DishesRecordBuilder> {
  static Serializer<DishesRecord> get serializer => _$dishesRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'Price')
  int? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DishesRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..image = ''
    ..price = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Dishes')
          : FirebaseFirestore.instance.collectionGroup('Dishes');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Dishes').doc();

  static Stream<DishesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DishesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DishesRecord._();
  factory DishesRecord([void Function(DishesRecordBuilder) updates]) =
      _$DishesRecord;

  static DishesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDishesRecordData({
  String? name,
  String? description,
  String? image,
  int? price,
}) {
  final firestoreData = serializers.toFirestore(
    DishesRecord.serializer,
    DishesRecord(
      (d) => d
        ..name = name
        ..description = description
        ..image = image
        ..price = price,
    ),
  );

  return firestoreData;
}
