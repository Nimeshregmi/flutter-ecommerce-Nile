import 'package:nile/models/category_models.dart';
import 'package:nile/models/models.dart';
import 'package:nile/screens/screens.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  const CatalogScreen({super.key, required this.category});
  static const String routeName = '/catalog';
  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: category),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryproduct = Product.products.where((products) => products.category == category.name).toList();
    return Scaffold(
        appBar: CustomAppbar(
          title: category.name,
        ),
        bottomNavigationBar: const CustomNavbar(),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 7.0, childAspectRatio: 1.15),
          itemCount: categoryproduct.length,
          itemBuilder: (context, index) {
            return Center(child: ProductCard(cardwidth: 2.2, product: categoryproduct[index]));
          },
        )

        //
        );
  }
}
