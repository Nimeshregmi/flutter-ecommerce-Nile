// ignore: unused_import
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props => [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products=[
    const Product(
      category:'softdrinks',
      name: 'coco cola',
       price: 200,
       imageUrl: 'https://images.unsplash.com/photo-1556710807-a9261921475f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c29mdGRyaW5rc3xlbnwwfHwwfHx8MA%3D%3D',
       isRecommended: true,
       isPopular:false 
    ),
    const Product(
      category:'softdrinks',
      name: 'Beer',
       price: 400,
       imageUrl: 'https://plus.unsplash.com/premium_photo-1679591002472-6383762fb31f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVlcnxlbnwwfHwwfHx8MA%3D%3D',
       isRecommended: false,
       isPopular:true 
    ),
    const Product(
      category:'softdrinks',
      name: 'Beer',
       price: 400,
       imageUrl: 'https://plus.unsplash.com/premium_photo-1679591002472-6383762fb31f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVlcnxlbnwwfHwwfHx8MA%3D%3D',
       isRecommended: false,
       isPopular:true 
    ),
    const Product(
      category:'softdrinks',
      name: 'Beer',
       price: 400,
       imageUrl: 'https://plus.unsplash.com/premium_photo-1679591002472-6383762fb31f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVlcnxlbnwwfHwwfHx8MA%3D%3D',
       isRecommended: false,
       isPopular:true 
    ),
    const Product(
      category:'snacks',
      name: 'Burger',
       price: 200,
       imageUrl: 'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fHww',
       isRecommended: true,
       isPopular:true 
    ),
    const Product(
      category:'snacks',
      name: 'Momo',
       price: 150,
       imageUrl: 'https://plus.unsplash.com/premium_photo-1673769108032-83c49135e142?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW9tb3xlbnwwfHwwfHx8MA%3D%3D',
       isRecommended: true,
       isPopular:true 
    ),
  ];
}
