// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snacks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SnacksRecord> _$snacksRecordSerializer =
    new _$SnacksRecordSerializer();

class _$SnacksRecordSerializer implements StructuredSerializer<SnacksRecord> {
  @override
  final Iterable<Type> types = const [SnacksRecord, _$SnacksRecord];
  @override
  final String wireName = 'SnacksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SnacksRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  SnacksRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SnacksRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$SnacksRecord extends SnacksRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? price;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SnacksRecord([void Function(SnacksRecordBuilder)? updates]) =>
      (new SnacksRecordBuilder()..update(updates))._build();

  _$SnacksRecord._(
      {this.name, this.image, this.price, this.description, this.ffRef})
      : super._();

  @override
  SnacksRecord rebuild(void Function(SnacksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnacksRecordBuilder toBuilder() => new SnacksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnacksRecord &&
        name == other.name &&
        image == other.image &&
        price == other.price &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), image.hashCode), price.hashCode),
            description.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SnacksRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('price', price)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SnacksRecordBuilder
    implements Builder<SnacksRecord, SnacksRecordBuilder> {
  _$SnacksRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SnacksRecordBuilder() {
    SnacksRecord._initializeBuilder(this);
  }

  SnacksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _price = $v.price;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnacksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SnacksRecord;
  }

  @override
  void update(void Function(SnacksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnacksRecord build() => _build();

  _$SnacksRecord _build() {
    final _$result = _$v ??
        new _$SnacksRecord._(
            name: name,
            image: image,
            price: price,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
