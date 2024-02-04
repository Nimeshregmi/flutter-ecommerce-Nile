import 'dart:ffi';

import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:nile/models/models.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<WishlistEvent>((event, emit) {});
  }
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    if (event is StartWishlist) {
      yield* _mapStartWishlistToState();
    } else if (event is AddWishlist) {
      yield* _mapAddWishlistToState(event, state);
    } else if (event is RemoveWishlist) {
      yield* _mapRemoveWishlistProductToState(event , state);
    }
  }

  Stream<WishlistState> _mapStartWishlistToState() async* {
    yield WishlistLoading();
    try {
      await Future<Void>.delayed(const Duration(seconds: 1));
      yield const WishlistLoaded();
      // ignore: empty_catches
    } catch (_) {}
  }

  Stream<WishlistState> _mapAddWishlistToState(AddWishlist event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(wishlist: Wishlistmodel(products: List.from(state.wishlist.products)..add(event.product)));
      } catch (_) {}
    }
  }

  Stream<WishlistState> _mapRemoveWishlistProductToState(RemoveWishlist event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(wishlist: Wishlistmodel(products: List.from(state.wishlist.products)..remove(event.product)));
      } catch (_) {}
    }
  }
}
