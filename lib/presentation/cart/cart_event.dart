part of 'cart_bloc.dart';

 class CartEvent {}
class RefreshCart extends CartEvent{
 final Completer<void>? completer;

 RefreshCart({this.completer});
}

class CartDeleteClick extends CartEvent{
  final ProductHive productHive;
  CartDeleteClick(this.productHive);
}

class CartLikeClick extends CartEvent{
  final ProductHive productHive;
  CartLikeClick(this.productHive);
}

class CartMinusClick extends CartEvent{
  final ProductHive productHive;
  CartMinusClick(this.productHive);
}

class CartPlusClick extends CartEvent{
  final ProductHive productHive;
  CartPlusClick(this.productHive);
}