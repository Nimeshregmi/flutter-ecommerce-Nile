import 'package:nile/config/theme.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Image.network(
                      products.imageUrl,
                      fit: BoxFit.cover,
                    )),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 28.0),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    
                    Text('\$2${products.price.toString()}',style:Theme.of(context).textTheme.displayMedium ,)
                  ],
                               ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
