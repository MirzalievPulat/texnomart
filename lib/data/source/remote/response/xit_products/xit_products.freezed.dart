// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xit_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

XitProducts _$XitProductsFromJson(Map<String, dynamic> json) {
  return _XitProducts.fromJson(json);
}

/// @nodoc
mixin _$XitProducts {
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Datas? get datas => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this XitProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of XitProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $XitProductsCopyWith<XitProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XitProductsCopyWith<$Res> {
  factory $XitProductsCopyWith(
          XitProducts value, $Res Function(XitProducts) then) =
      _$XitProductsCopyWithImpl<$Res, XitProducts>;
  @useResult
  $Res call(
      {int? code,
      @JsonKey(name: "data") Datas? datas,
      String? message,
      int? status,
      bool? success});

  $DatasCopyWith<$Res>? get datas;
}

/// @nodoc
class _$XitProductsCopyWithImpl<$Res, $Val extends XitProducts>
    implements $XitProductsCopyWith<$Res> {
  _$XitProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XitProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? datas = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      datas: freezed == datas
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as Datas?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of XitProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatasCopyWith<$Res>? get datas {
    if (_value.datas == null) {
      return null;
    }

    return $DatasCopyWith<$Res>(_value.datas!, (value) {
      return _then(_value.copyWith(datas: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$XitProductsImplCopyWith<$Res>
    implements $XitProductsCopyWith<$Res> {
  factory _$$XitProductsImplCopyWith(
          _$XitProductsImpl value, $Res Function(_$XitProductsImpl) then) =
      __$$XitProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      @JsonKey(name: "data") Datas? datas,
      String? message,
      int? status,
      bool? success});

  @override
  $DatasCopyWith<$Res>? get datas;
}

/// @nodoc
class __$$XitProductsImplCopyWithImpl<$Res>
    extends _$XitProductsCopyWithImpl<$Res, _$XitProductsImpl>
    implements _$$XitProductsImplCopyWith<$Res> {
  __$$XitProductsImplCopyWithImpl(
      _$XitProductsImpl _value, $Res Function(_$XitProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of XitProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? datas = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? success = freezed,
  }) {
    return _then(_$XitProductsImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      datas: freezed == datas
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as Datas?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$XitProductsImpl implements _XitProducts {
  const _$XitProductsImpl(
      {this.code,
      @JsonKey(name: "data") this.datas,
      this.message,
      this.status,
      this.success});

  factory _$XitProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$XitProductsImplFromJson(json);

  @override
  final int? code;
  @override
  @JsonKey(name: "data")
  final Datas? datas;
  @override
  final String? message;
  @override
  final int? status;
  @override
  final bool? success;

  @override
  String toString() {
    return 'XitProducts(code: $code, datas: $datas, message: $message, status: $status, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XitProductsImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.datas, datas) || other.datas == datas) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, datas, message, status, success);

  /// Create a copy of XitProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XitProductsImplCopyWith<_$XitProductsImpl> get copyWith =>
      __$$XitProductsImplCopyWithImpl<_$XitProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$XitProductsImplToJson(
      this,
    );
  }
}

abstract class _XitProducts implements XitProducts {
  const factory _XitProducts(
      {final int? code,
      @JsonKey(name: "data") final Datas? datas,
      final String? message,
      final int? status,
      final bool? success}) = _$XitProductsImpl;

  factory _XitProducts.fromJson(Map<String, dynamic> json) =
      _$XitProductsImpl.fromJson;

  @override
  int? get code;
  @override
  @JsonKey(name: "data")
  Datas? get datas;
  @override
  String? get message;
  @override
  int? get status;
  @override
  bool? get success;

  /// Create a copy of XitProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XitProductsImplCopyWith<_$XitProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
