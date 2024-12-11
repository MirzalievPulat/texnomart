part of 'container_bloc.dart';

class ContainerEvent {}

class GoCatalogPage extends ContainerEvent{}
class GoCartPage extends ContainerEvent{}
class ChangePage extends ContainerEvent{
  final int page;
  ChangePage(this.page);
}

class CalculateCart extends ContainerEvent{}