import 'package:nile/bloc/wishlist/wishlist_bloc.dart';
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
                color: Colors.white,
              ),
              BlocBuilder<WishlistBloc, WishlistState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      context.read<WishlistBloc>().add(AddWishlist(product: products));
                      const snackBar=SnackBar(content: Text('Added successfully'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.white,
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Add to Cart",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              // autoPlay: true,
            ),
            items: [HeroSlider(product: products)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Stack(
              children: [
                Container(
                  color: Colors.black.withAlpha(50),
                  alignment: Alignment.bottomCenter,
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  color: Colors.black,
                  alignment: Alignment.bottomCenter,
                  height: 50,
                  margin: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width - 10,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          products.name,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${products.price}',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ExpansionTile(
              leading: Container(
                  padding: const EdgeInsets.all(4.0),
                  color: Colors.black,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
              title: Text(
                "Product Information",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              initiallyExpanded: true,
              children: [
                ListTile(
                  title: Text(
                    "If the [style] argument is null, the text will use the style from the closest enclosing [DefaultTextStyle]. The [overflow] property's behavior is affected by the [softWrap] argument. If the [softWrap] is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ExpansionTile(
              leading: Container(
                  padding: const EdgeInsets.all(4.0),
                  color: Colors.black,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
              title: Text(
                "Delivery Information",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              initiallyExpanded: true,
              children: [
                ListTile(
                  title: Text(
                    "If the [style] argument is null, the text will use the style from the closest enclosing [DefaultTextStyle]. The [overflow] property's behavior is affected by the [softWrap] argument. If the [softWrap] is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
