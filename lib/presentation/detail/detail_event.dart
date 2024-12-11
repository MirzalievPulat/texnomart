part of 'detail_bloc.dart';

abstract class DetailEvent {}

class InitEvent extends DetailEvent{
  final ProductHive product;
  InitEvent(this.product);
}

class DetailLikeClick extends DetailEvent{}
