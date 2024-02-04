part of 'wishlist_bloc.dart';

sealed class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class StartWishlist extends WishlistEvent {}

class AddWishlist extends WishlistEvent {
  final Product product;

  const AddWishlist({required this.product});

  @override
  List<Object> get props => [product];
  
}

class RemoveWishlist extends WishlistEvent {
  final Product product;

  const RemoveWishlist({required this.product});

  @override
  List<Object> get props => [product];
}