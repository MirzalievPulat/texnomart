part of 'category_bloc.dart';

abstract class CategoryEvent {}

class RefreshCategory extends CategoryEvent{}
class InitCategory extends CategoryEvent{
  final String slug;
  InitCategory(this.slug);
}
