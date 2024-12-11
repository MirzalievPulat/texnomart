// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_top.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryTop _$CategoryTopFromJson(Map<String, dynamic> json) {
  return _CategoryTop.fromJson(json);
}

/// @nodoc
mixin _$CategoryTop {
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

  /// Serializes this CategoryTop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryTop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryTopCopyWith<CategoryTop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTopCopyWith<$Res> {
  factory $CategoryTopCopyWith(
          CategoryTop value, $Res Function(CategoryTop) then) =
      _$CategoryTopCopyWithImpl<$Res, CategoryTop>;
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
class _$CategoryTopCopyWithImpl<$Res, $Val extends CategoryTop>
    implements $CategoryTopCopyWith<$Res> {
  _$CategoryTopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTop
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

  /// Create a copy of CategoryTop
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
abstract class _$$CategoryTopImplCopyWith<$Res>
    implements $CategoryTopCopyWith<$Res> {
  factory _$$CategoryTopImplCopyWith(
          _$CategoryTopImpl value, $Res Function(_$CategoryTopImpl) then) =
      __$$CategoryTopImplCopyWithImpl<$Res>;
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
class __$$CategoryTopImplCopyWithImpl<$Res>
    extends _$CategoryTopCopyWithImpl<$Res, _$CategoryTopImpl>
    implements _$$CategoryTopImplCopyWith<$Res> {
  __$$CategoryTopImplCopyWithImpl(
      _$CategoryTopImpl _value, $Res Function(_$CategoryTopImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTop
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
    return _then(_$CategoryTopImpl(
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
class _$CategoryTopImpl implements _CategoryTop {
  const _$CategoryTopImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "success") required this.success});

  factory _$CategoryTopImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryTopImplFromJson(json);

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
    return 'CategoryTop(code: $code, data: $data, message: $message, status: $status, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTopImpl &&
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

  /// Create a copy of CategoryTop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryTopImplCopyWith<_$CategoryTopImpl> get copyWith =>
      __$$CategoryTopImplCopyWithImpl<_$CategoryTopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryTopImplToJson(
      this,
    );
  }
}

abstract class _CategoryTop implements CategoryTop {
  const factory _CategoryTop(
          {@JsonKey(name: "code") required final int code,
          @JsonKey(name: "data") required final Data data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status") required final int status,
          @JsonKey(name: "success") required final bool success}) =
      _$CategoryTopImpl;

  factory _CategoryTop.fromJson(Map<String, dynamic> json) =
      _$CategoryTopImpl.fromJson;

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

  /// Create a copy of CategoryTop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryTopImplCopyWith<_$CategoryTopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "categories")
  List<Parent> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "has_child")
  bool get hasChild => throw _privateConstructorUsedError;
  @JsonKey(name: "has_child_image")
  bool get hasChildImage => throw _privateConstructorUsedError;
  @JsonKey(name: "parent")
  Parent get parent => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "categories") List<Parent> categories,
      @JsonKey(name: "has_child") bool hasChild,
      @JsonKey(name: "has_child_image") bool hasChildImage,
      @JsonKey(name: "parent") Parent parent});

  $ParentCopyWith<$Res> get parent;
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
    Object? categories = null,
    Object? hasChild = null,
    Object? hasChildImage = null,
    Object? parent = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Parent>,
      hasChild: null == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool,
      hasChildImage: null == hasChildImage
          ? _value.hasChildImage
          : hasChildImage // ignore: cast_nullable_to_non_nullable
              as bool,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "categories") List<Parent> categories,
      @JsonKey(name: "has_child") bool hasChild,
      @JsonKey(name: "has_child_image") bool hasChildImage,
      @JsonKey(name: "parent") Parent parent});

  @override
  $ParentCopyWith<$Res> get parent;
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
    Object? categories = null,
    Object? hasChild = null,
    Object? hasChildImage = null,
    Object? parent = null,
  }) {
    return _then(_$DataImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Parent>,
      hasChild: null == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool,
      hasChildImage: null == hasChildImage
          ? _value.hasChildImage
          : hasChildImage // ignore: cast_nullable_to_non_nullable
              as bool,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "categories") required final List<Parent> categories,
      @JsonKey(name: "has_child") required this.hasChild,
      @JsonKey(name: "has_child_image") required this.hasChildImage,
      @JsonKey(name: "parent") required this.parent})
      : _categories = categories;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Parent> _categories;
  @override
  @JsonKey(name: "categories")
  List<Parent> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey(name: "has_child")
  final bool hasChild;
  @override
  @JsonKey(name: "has_child_image")
  final bool hasChildImage;
  @override
  @JsonKey(name: "parent")
  final Parent parent;

  @override
  String toString() {
    return 'Data(categories: $categories, hasChild: $hasChild, hasChildImage: $hasChildImage, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.hasChild, hasChild) ||
                other.hasChild == hasChild) &&
            (identical(other.hasChildImage, hasChildImage) ||
                other.hasChildImage == hasChildImage) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      hasChild,
      hasChildImage,
      parent);

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
      {@JsonKey(name: "categories") required final List<Parent> categories,
      @JsonKey(name: "has_child") required final bool hasChild,
      @JsonKey(name: "has_child_image") required final bool hasChildImage,
      @JsonKey(name: "parent") required final Parent parent}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "categories")
  List<Parent> get categories;
  @override
  @JsonKey(name: "has_child")
  bool get hasChild;
  @override
  @JsonKey(name: "has_child_image")
  bool get hasChildImage;
  @override
  @JsonKey(name: "parent")
  Parent get parent;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return _Parent.fromJson(json);
}

/// @nodoc
mixin _$Parent {
  @JsonKey(name: "has_child")
  bool get hasChild => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError; // @JsonKey(name: "image")
// required String image,
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this Parent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentCopyWith<Parent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<$Res> {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) then) =
      _$ParentCopyWithImpl<$Res, Parent>;
  @useResult
  $Res call(
      {@JsonKey(name: "has_child") bool hasChild,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "slug") String slug});
}

/// @nodoc
class _$ParentCopyWithImpl<$Res, $Val extends Parent>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasChild = null,
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      hasChild: null == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentImplCopyWith<$Res> implements $ParentCopyWith<$Res> {
  factory _$$ParentImplCopyWith(
          _$ParentImpl value, $Res Function(_$ParentImpl) then) =
      __$$ParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "has_child") bool hasChild,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "slug") String slug});
}

/// @nodoc
class __$$ParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$ParentImpl>
    implements _$$ParentImplCopyWith<$Res> {
  __$$ParentImplCopyWithImpl(
      _$ParentImpl _value, $Res Function(_$ParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasChild = null,
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$ParentImpl(
      hasChild: null == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ParentImpl implements _Parent {
  const _$ParentImpl(
      {@JsonKey(name: "has_child") required this.hasChild,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "slug") required this.slug});

  factory _$ParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentImplFromJson(json);

  @override
  @JsonKey(name: "has_child")
  final bool hasChild;
  @override
  @JsonKey(name: "id")
  final int id;
// @JsonKey(name: "image")
// required String image,
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "slug")
  final String slug;

  @override
  String toString() {
    return 'Parent(hasChild: $hasChild, id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentImpl &&
            (identical(other.hasChild, hasChild) ||
                other.hasChild == hasChild) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasChild, id, name, slug);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      __$$ParentImplCopyWithImpl<_$ParentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentImplToJson(
      this,
    );
  }
}

abstract class _Parent implements Parent {
  const factory _Parent(
      {@JsonKey(name: "has_child") required final bool hasChild,
      @JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "slug") required final String slug}) = _$ParentImpl;

  factory _Parent.fromJson(Map<String, dynamic> json) = _$ParentImpl.fromJson;

  @override
  @JsonKey(name: "has_child")
  bool get hasChild;
  @override
  @JsonKey(name: "id")
  int get id; // @JsonKey(name: "image")
// required String image,
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "slug")
  String get slug;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
