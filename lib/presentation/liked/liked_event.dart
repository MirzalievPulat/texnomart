part of 'liked_bloc.dart';

abstract class LikedEvent {}

class RefreshLiked extends LikedEvent{}
class LikedCartClick extends LikedEvent{
  final ProductHive productHive;
  LikedCartClick(this.productHive);
}
class LikedClick extends LikedEvent{
  final ProductHive productHive;
  LikedClick(this.productHive);
}
