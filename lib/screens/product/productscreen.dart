import 'package:nile/models/models.dart';
import 'package:nile/screens/screens.dart';

class ProductScreen extends StatelessWidget {
  final Product products;
  const ProductScreen({super.key, required this.products});
  static const String routeName = '/product';
  static Route route({required Product products}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => ProductScreen(products: products),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: products.name,
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                // autoPlay: true,
              ),
              items:  [HeroSlider(product
              : products)],
            ),
    );
  }
}
