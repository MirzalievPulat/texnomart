// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'katalog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Katalog _$KatalogFromJson(Map<String, dynamic> json) {
  return _Katalog.fromJson(json);
}

/// @nodoc
mixin _$Katalog {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this Katalog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Katalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KatalogCopyWith<Katalog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KatalogCopyWith<$Res> {
  factory $KatalogCopyWith(Katalog value, $Res Function(Katalog) then) =
      _$KatalogCopyWithImpl<$Res, Katalog>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "data") Data data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "success") bool success});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$KatalogCopyWithImpl<$Res, $Val extends Katalog>
    implements $KatalogCopyWith<$Res> {
  _$KatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Katalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? message = null,
    Object? status = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Katalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KatalogImplCopyWith<$Res> implements $KatalogCopyWith<$Res> {
  factory _$$KatalogImplCopyWith(
          _$KatalogImpl value, $Res Function(_$KatalogImpl) then) =
      __$$KatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "data") Data data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "success") bool success});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$KatalogImplCopyWithImpl<$Res>
    extends _$KatalogCopyWithImpl<$Res, _$KatalogImpl>
    implements _$$KatalogImplCopyWith<$Res> {
  __$$KatalogImplCopyWithImpl(
      _$KatalogImpl _value, $Res Function(_$KatalogImpl) _then)
      : super(_value, _then);

  /// Create a copy of Katalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? message = null,
    Object? status = null,
    Object? success = null,
  }) {
    return _then(_$KatalogImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$KatalogImpl implements _Katalog {
  const _$KatalogImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "success") required this.success});

  factory _$KatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$KatalogImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "data")
  final Data data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status")
  final int status;
  @override
  @JsonKey(name: "success")
  final bool success;

  @override
  String toString() {
    return 'Katalog(code: $code, data: $data, message: $message, status: $status, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KatalogImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, data, message, status, success);

  /// Create a copy of Katalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KatalogImplCopyWith<_$KatalogImpl> get copyWith =>
      __$$KatalogImplCopyWithImpl<_$KatalogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KatalogImplToJson(
      this,
    );
  }
}

abstract class _Katalog implements Katalog {
  const factory _Katalog(
      {@JsonKey(name: "code") required final int code,
      @JsonKey(name: "data") required final Data data,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "status") required final int status,
      @JsonKey(name: "success") required final bool success}) = _$KatalogImpl;

  factory _Katalog.fromJson(Map<String, dynamic> json) = _$KatalogImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "data")
  Data get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(name: "success")
  bool get success;

  /// Create a copy of Katalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KatalogImplCopyWith<_$KatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "data")
  List<Datum> get data => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: "data") List<Datum> data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<Datum> data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: "data") required final List<Datum> data})
      : _data = data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Datum> _data;
  @override
  @JsonKey(name: "data")
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "data") required final List<Datum> data}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<Datum> get data;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "brands")
  List<dynamic> get brands => throw _privateConstructorUsedError;
  @JsonKey(name: "childs")
  List<Child> get childs => throw _privateConstructorUsedError;
  @JsonKey(name: "icon")
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "show_childs_in_web_mobile")
  bool get showChildsInWebMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "brands") List<dynamic> brands,
      @JsonKey(name: "childs") List<Child> childs,
      @JsonKey(name: "icon") String icon,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "show_childs_in_web_mobile") bool showChildsInWebMobile,
      @JsonKey(name: "slug") String slug});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
    Object? childs = null,
    Object? icon = null,
    Object? name = null,
    Object? showChildsInWebMobile = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      childs: null == childs
          ? _value.childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Child>,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showChildsInWebMobile: null == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "brands") List<dynamic> brands,
      @JsonKey(name: "childs") List<Child> childs,
      @JsonKey(name: "icon") String icon,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "show_childs_in_web_mobile") bool showChildsInWebMobile,
      @JsonKey(name: "slug") String slug});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
    Object? childs = null,
    Object? icon = null,
    Object? name = null,
    Object? showChildsInWebMobile = null,
    Object? slug = null,
  }) {
    return _then(_$DatumImpl(
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      childs: null == childs
          ? _value._childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Child>,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showChildsInWebMobile: null == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "brands") required final List<dynamic> brands,
      @JsonKey(name: "childs") required final List<Child> childs,
      @JsonKey(name: "icon") required this.icon,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "show_childs_in_web_mobile")
      required this.showChildsInWebMobile,
      @JsonKey(name: "slug") required this.slug})
      : _brands = brands,
        _childs = childs;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  final List<dynamic> _brands;
  @override
  @JsonKey(name: "brands")
  List<dynamic> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  final List<Child> _childs;
  @override
  @JsonKey(name: "childs")
  List<Child> get childs {
    if (_childs is EqualUnmodifiableListView) return _childs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childs);
  }

  @override
  @JsonKey(name: "icon")
  final String icon;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "show_childs_in_web_mobile")
  final bool showChildsInWebMobile;
  @override
  @JsonKey(name: "slug")
  final String slug;

  @override
  String toString() {
    return 'Datum(brands: $brands, childs: $childs, icon: $icon, name: $name, showChildsInWebMobile: $showChildsInWebMobile, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality().equals(other._childs, _childs) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showChildsInWebMobile, showChildsInWebMobile) ||
                other.showChildsInWebMobile == showChildsInWebMobile) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_childs),
      icon,
      name,
      showChildsInWebMobile,
      slug);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "brands") required final List<dynamic> brands,
      @JsonKey(name: "childs") required final List<Child> childs,
      @JsonKey(name: "icon") required final String icon,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "show_childs_in_web_mobile")
      required final bool showChildsInWebMobile,
      @JsonKey(name: "slug") required final String slug}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "brands")
  List<dynamic> get brands;
  @override
  @JsonKey(name: "childs")
  List<Child> get childs;
  @override
  @JsonKey(name: "icon")
  String get icon;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "show_childs_in_web_mobile")
  bool get showChildsInWebMobile;
  @override
  @JsonKey(name: "slug")
  String get slug;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Child _$ChildFromJson(Map<String, dynamic> json) {
  return _Child.fromJson(json);
}

/// @nodoc
mixin _$Child {
  @JsonKey(name: "childs")
  List<Child>? get childs => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "show_childs_in_web_mobile")
  bool get showChildsInWebMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this Child to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildCopyWith<Child> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCopyWith<$Res> {
  factory $ChildCopyWith(Child value, $Res Function(Child) then) =
      _$ChildCopyWithImpl<$Res, Child>;
  @useResult
  $Res call(
      {@JsonKey(name: "childs") List<Child>? childs,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "show_childs_in_web_mobile") bool showChildsInWebMobile,
      @JsonKey(name: "slug") String slug});
}

/// @nodoc
class _$ChildCopyWithImpl<$Res, $Val extends Child>
    implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childs = freezed,
    Object? name = null,
    Object? showChildsInWebMobile = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      childs: freezed == childs
          ? _value.childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showChildsInWebMobile: null == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildImplCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$$ChildImplCopyWith(
          _$ChildImpl value, $Res Function(_$ChildImpl) then) =
      __$$ChildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "childs") List<Child>? childs,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "show_childs_in_web_mobile") bool showChildsInWebMobile,
      @JsonKey(name: "slug") String slug});
}

/// @nodoc
class __$$ChildImplCopyWithImpl<$Res>
    extends _$ChildCopyWithImpl<$Res, _$ChildImpl>
    implements _$$ChildImplCopyWith<$Res> {
  __$$ChildImplCopyWithImpl(
      _$ChildImpl _value, $Res Function(_$ChildImpl) _then)
      : super(_value, _then);

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childs = freezed,
    Object? name = null,
    Object? showChildsInWebMobile = null,
    Object? slug = null,
  }) {
    return _then(_$ChildImpl(
      childs: freezed == childs
          ? _value._childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showChildsInWebMobile: null == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ChildImpl implements _Child {
  const _$ChildImpl(
      {@JsonKey(name: "childs") final List<Child>? childs,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "show_childs_in_web_mobile")
      required this.showChildsInWebMobile,
      @JsonKey(name: "slug") required this.slug})
      : _childs = childs;

  factory _$ChildImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildImplFromJson(json);

  final List<Child>? _childs;
  @override
  @JsonKey(name: "childs")
  List<Child>? get childs {
    final value = _childs;
    if (value == null) return null;
    if (_childs is EqualUnmodifiableListView) return _childs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "show_childs_in_web_mobile")
  final bool showChildsInWebMobile;
  @override
  @JsonKey(name: "slug")
  final String slug;

  @override
  String toString() {
    return 'Child(childs: $childs, name: $name, showChildsInWebMobile: $showChildsInWebMobile, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildImpl &&
            const DeepCollectionEquality().equals(other._childs, _childs) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showChildsInWebMobile, showChildsInWebMobile) ||
                other.showChildsInWebMobile == showChildsInWebMobile) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_childs),
      name,
      showChildsInWebMobile,
      slug);

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      __$$ChildImplCopyWithImpl<_$ChildImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildImplToJson(
      this,
    );
  }
}

abstract class _Child implements Child {
  const factory _Child(
      {@JsonKey(name: "childs") final List<Child>? childs,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "show_childs_in_web_mobile")
      required final bool showChildsInWebMobile,
      @JsonKey(name: "slug") required final String slug}) = _$ChildImpl;

  factory _Child.fromJson(Map<String, dynamic> json) = _$ChildImpl.fromJson;

  @override
  @JsonKey(name: "childs")
  List<Child>? get childs;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "show_childs_in_web_mobile")
  bool get showChildsInWebMobile;
  @override
  @JsonKey(name: "slug")
  String get slug;

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
