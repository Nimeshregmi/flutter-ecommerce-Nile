// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:nile/models/models.dart';

class Wishlistmodel extends Equatable {
  final List<Product> products;

  const Wishlistmodel({ this.products=const <Product>[]});
  @override
  List<Object?> get props => [products];
}
