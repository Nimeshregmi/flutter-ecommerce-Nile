import 'package:nile/models/models.dart';
import 'package:nile/screens/screens.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> product;
  const ProductCarousel({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: product.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: ProductCard(product: product[index]),
          );
        },
      ),
    );
  }
}
