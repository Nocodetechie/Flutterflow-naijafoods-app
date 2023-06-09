// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alcoholicbrands_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlcoholicbrandsRecord> _$alcoholicbrandsRecordSerializer =
    new _$AlcoholicbrandsRecordSerializer();

class _$AlcoholicbrandsRecordSerializer
    implements StructuredSerializer<AlcoholicbrandsRecord> {
  @override
  final Iterable<Type> types = const [
    AlcoholicbrandsRecord,
    _$AlcoholicbrandsRecord
  ];
  @override
  final String wireName = 'AlcoholicbrandsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AlcoholicbrandsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AlcoholicbrandsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlcoholicbrandsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AlcoholicbrandsRecord extends AlcoholicbrandsRecord {
  @override
  final String? name;
  @override
  final int? price;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlcoholicbrandsRecord(
          [void Function(AlcoholicbrandsRecordBuilder)? updates]) =>
      (new AlcoholicbrandsRecordBuilder()..update(updates))._build();

  _$AlcoholicbrandsRecord._({this.name, this.price, this.image, this.ffRef})
      : super._();

  @override
  AlcoholicbrandsRecord rebuild(
          void Function(AlcoholicbrandsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlcoholicbrandsRecordBuilder toBuilder() =>
      new AlcoholicbrandsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlcoholicbrandsRecord &&
        name == other.name &&
        price == other.price &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), price.hashCode), image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlcoholicbrandsRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlcoholicbrandsRecordBuilder
    implements Builder<AlcoholicbrandsRecord, AlcoholicbrandsRecordBuilder> {
  _$AlcoholicbrandsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlcoholicbrandsRecordBuilder() {
    AlcoholicbrandsRecord._initializeBuilder(this);
  }

  AlcoholicbrandsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlcoholicbrandsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlcoholicbrandsRecord;
  }

  @override
  void update(void Function(AlcoholicbrandsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlcoholicbrandsRecord build() => _build();

  _$AlcoholicbrandsRecord _build() {
    final _$result = _$v ??
        new _$AlcoholicbrandsRecord._(
            name: name, price: price, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
