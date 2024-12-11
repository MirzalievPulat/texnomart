// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TopCategoryModelAdapter extends TypeAdapter<TopCategoryModel> {
  @override
  final int typeId = 1;

  @override
  TopCategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TopCategoryModel(
      hasChild: fields[1] as bool,
      id: fields[3] as int,
      image: fields[5] as String,
      name: fields[7] as String,
      slug: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TopCategoryModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.hasChild)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(9)
      ..write(obj.slug);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopCategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopCategoryModel _$TopCategoryModelFromJson(Map<String, dynamic> json) =>
    TopCategoryModel(
      hasChild: json['has_child'] as bool,
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$TopCategoryModelToJson(TopCategoryModel instance) =>
    <String, dynamic>{
      'has_child': instance.hasChild,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'slug': instance.slug,
    };
