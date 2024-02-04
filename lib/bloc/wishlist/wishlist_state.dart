part of 'wishlist_bloc.dart';

sealed class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object> get props => [];
}

final class WishlistLoading extends WishlistState {}

// class  extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final Wishlistmodel wishlist;

  const WishlistLoaded({this.wishlist = const Wishlistmodel()});

  @override
  List<Object> get props => [wishlist];
}

class WishlistError extends WishlistState {}
