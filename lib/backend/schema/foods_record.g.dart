// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foods_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodsRecord> _$foodsRecordSerializer = new _$FoodsRecordSerializer();

class _$FoodsRecordSerializer implements StructuredSerializer<FoodsRecord> {
  @override
  final Iterable<Type> types = const [FoodsRecord, _$FoodsRecord];
  @override
  final String wireName = 'FoodsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FoodsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
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
  FoodsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Image':
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

class _$FoodsRecord extends FoodsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FoodsRecord([void Function(FoodsRecordBuilder)? updates]) =>
      (new FoodsRecordBuilder()..update(updates))._build();

  _$FoodsRecord._({this.name, this.description, this.image, this.ffRef})
      : super._();

  @override
  FoodsRecord rebuild(void Function(FoodsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodsRecordBuilder toBuilder() => new FoodsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodsRecord &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), description.hashCode), image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FoodsRecordBuilder implements Builder<FoodsRecord, FoodsRecordBuilder> {
  _$FoodsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FoodsRecordBuilder() {
    FoodsRecord._initializeBuilder(this);
  }

  FoodsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodsRecord;
  }

  @override
  void update(void Function(FoodsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodsRecord build() => _build();

  _$FoodsRecord _build() {
    final _$result = _$v ??
        new _$FoodsRecord._(
            name: name, description: description, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
