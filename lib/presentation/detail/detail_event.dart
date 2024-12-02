part of 'detail_bloc.dart';

abstract class DetailEvent {}

class InitEvent extends DetailEvent{
  final Product product;
  InitEvent(this.product);
}
