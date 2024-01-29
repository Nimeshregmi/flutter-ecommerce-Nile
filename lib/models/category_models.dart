// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrls;
  const Category({required this.name, required this.imageUrls});

  @override
  List<Object?> get props => [name, imageUrls];

  static List<Category> categories = [
    const Category(
        name: "snacks",
        imageUrls:
            'https://images.unsplash.com/photo-1544145945-f90425340c7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZHJpbmt8ZW58MHx8MHx8fDA%3D'),
    const Category(name: 'softdrinks', imageUrls: 'https://images.unsplash.com/photo-1567696911980-2eed69a46042?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVlcnxlbnwwfHwwfHx8MA%3D%3D'),
    const Category(name: 'softdrinks',imageUrls: 'https://plus.unsplash.com/premium_photo-1681826664053-5f50e4a0c513?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c21vb3RoaWVzfGVufDB8fDB8fHww'),
    const Category(name: 'snacks',imageUrls: 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhbHRoeXxlbnwwfHwwfHx8MA%3D%3D')
  ];
}
