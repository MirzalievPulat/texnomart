// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductHiveAdapter extends TypeAdapter<ProductHive> {
  @override
  final int typeId = 1;

  @override
  ProductHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductHive(
      axiomMonthlyPrice: fields[1] as String,
      finishPrice: fields[2] as int,
      id: fields[3] as int,
      image: fields[4] as String,
      name: fields[5] as String,
      liked: fields[6] as bool,
      inCart: fields[7] as bool,
      cartAmount: fields[8] as int,
      selectedToBuy: fields[9] as bool,
      isXitProduct: fields[10] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductHive obj) {
    writer
      ..writeByte(10)
      ..writeByte(1)
      ..write(obj.axiomMonthlyPrice)
      ..writeByte(2)
      ..write(obj.finishPrice)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.liked)
      ..writeByte(7)
      ..write(obj.inCart)
      ..writeByte(8)
      ..write(obj.cartAmount)
      ..writeByte(9)
      ..write(obj.selectedToBuy)
      ..writeByte(10)
      ..write(obj.isXitProduct);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
