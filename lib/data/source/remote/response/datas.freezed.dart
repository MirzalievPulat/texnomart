// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Datas _$DatasFromJson(Map<String, dynamic> json) {
  return _Datas.fromJson(json);
}

/// @nodoc
mixin _$Datas {
  @JsonKey(name: "data")
  List<Product>? get products => throw _privateConstructorUsedError;

  /// Serializes this Datas to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatasCopyWith<Datas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasCopyWith<$Res> {
  factory $DatasCopyWith(Datas value, $Res Function(Datas) then) =
      _$DatasCopyWithImpl<$Res, Datas>;
  @useResult
  $Res call({@JsonKey(name: "data") List<Product>? products});
}

/// @nodoc
class _$DatasCopyWithImpl<$Res, $Val extends Datas>
    implements $DatasCopyWith<$Res> {
  _$DatasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datas
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatasImplCopyWith<$Res> implements $DatasCopyWith<$Res> {
  factory _$$DatasImplCopyWith(
          _$DatasImpl value, $Res Function(_$DatasImpl) then) =
      __$$DatasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<Product>? products});
}

/// @nodoc
class __$$DatasImplCopyWithImpl<$Res>
    extends _$DatasCopyWithImpl<$Res, _$DatasImpl>
    implements _$$DatasImplCopyWith<$Res> {
  __$$DatasImplCopyWithImpl(
      _$DatasImpl _value, $Res Function(_$DatasImpl) _then)
      : super(_value, _then);

  /// Create a copy of Datas
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$DatasImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DatasImpl implements _Datas {
  const _$DatasImpl({@JsonKey(name: "data") final List<Product>? products})
      : _products = products;

  factory _$DatasImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasImplFromJson(json);

  final List<Product>? _products;
  @override
  @JsonKey(name: "data")
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datas(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of Datas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasImplCopyWith<_$DatasImpl> get copyWith =>
      __$$DatasImplCopyWithImpl<_$DatasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasImplToJson(
      this,
    );
  }
}

abstract class _Datas implements Datas {
  const factory _Datas({@JsonKey(name: "data") final List<Product>? products}) =
      _$DatasImpl;

  factory _Datas.fromJson(Map<String, dynamic> json) = _$DatasImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<Product>? get products;

  /// Create a copy of Datas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatasImplCopyWith<_$DatasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
