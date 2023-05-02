// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nonalcoholicbrands_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NonalcoholicbrandsRecord> _$nonalcoholicbrandsRecordSerializer =
    new _$NonalcoholicbrandsRecordSerializer();

class _$NonalcoholicbrandsRecordSerializer
    implements StructuredSerializer<NonalcoholicbrandsRecord> {
  @override
  final Iterable<Type> types = const [
    NonalcoholicbrandsRecord,
    _$NonalcoholicbrandsRecord
  ];
  @override
  final String wireName = 'NonalcoholicbrandsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NonalcoholicbrandsRecord object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  NonalcoholicbrandsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NonalcoholicbrandsRecordBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$NonalcoholicbrandsRecord extends NonalcoholicbrandsRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NonalcoholicbrandsRecord(
          [void Function(NonalcoholicbrandsRecordBuilder)? updates]) =>
      (new NonalcoholicbrandsRecordBuilder()..update(updates))._build();

  _$NonalcoholicbrandsRecord._({this.name, this.image, this.price, this.ffRef})
      : super._();

  @override
  NonalcoholicbrandsRecord rebuild(
          void Function(NonalcoholicbrandsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NonalcoholicbrandsRecordBuilder toBuilder() =>
      new NonalcoholicbrandsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NonalcoholicbrandsRecord &&
        name == other.name &&
        image == other.image &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), image.hashCode), price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NonalcoholicbrandsRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NonalcoholicbrandsRecordBuilder
    implements
        Builder<NonalcoholicbrandsRecord, NonalcoholicbrandsRecordBuilder> {
  _$NonalcoholicbrandsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NonalcoholicbrandsRecordBuilder() {
    NonalcoholicbrandsRecord._initializeBuilder(this);
  }

  NonalcoholicbrandsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NonalcoholicbrandsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NonalcoholicbrandsRecord;
  }

  @override
  void update(void Function(NonalcoholicbrandsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NonalcoholicbrandsRecord build() => _build();

  _$NonalcoholicbrandsRecord _build() {
    final _$result = _$v ??
        new _$NonalcoholicbrandsRecord._(
            name: name, image: image, price: price, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
