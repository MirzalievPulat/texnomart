import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:texnomart/data/source/remote/response/category_top/category_top.dart';


part 'top_category.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class TopCategoryModel {
  @HiveField(1)
  @JsonKey(name: "has_child")
  final bool hasChild;
  @HiveField(3)
  @JsonKey(name: "id")
  final int id;
  @HiveField(5)
  @JsonKey(name: "image")
  final String image;
  @HiveField(7)
  @JsonKey(name: "name")
  final String name;
  @HiveField(9)
  @JsonKey(name: "slug")
  final String slug;

  TopCategoryModel({
    required this.hasChild,
    required this.id,
    required this.image,
    required this.name,
    required this.slug,
  });

  factory TopCategoryModel.fromJson(Map<String, dynamic> json) => _$TopCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopCategoryModelToJson(this);

  @override
  String toString() {
    return 'TopCategoryModel(hasChild: $hasChild, id: $id, image: $image, name: $name, slug: $slug)\n';
  }
}


// Convert Parent to TopCategoryModel
TopCategoryModel parentToTopCategoryModel(Parent parent) {
  return TopCategoryModel(
    hasChild: parent.hasChild,
    id: parent.id,
    image: "",
    name: parent.name,
    slug: parent.slug,
  );
}

// Convert TopCategoryModel to Parent
Parent topCategoryModelToParent(TopCategoryModel model) {
  return Parent(
    hasChild: model.hasChild,
    id: model.id,
    // image: model.image,
    name: model.name,
    slug: model.slug,
  );
}


