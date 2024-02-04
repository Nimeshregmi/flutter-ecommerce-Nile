import 'package:nile/bloc/wishlist/wishlist_bloc.dart';
import 'package:nile/models/models.dart';
import 'package:nile/screens/screens.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});
  static const String routeName = '/wishlist';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'WishList',
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return Container(
              padding: const EdgeInsets.all(20.0),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is WishlistLoaded) {
            return GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, mainAxisSpacing: 7.0, childAspectRatio: 2.2),
              itemCount: state.wishlist.products.length,
              itemBuilder: (context, index) {
                return Center(child: ProductCard(cardwidth: 1.2,
                 divide: 1.8, rightPositon: 4, iswishlist: true, product:state.wishlist.products[index]));
              },
            );
          } else {
            return Container(
              padding: const EdgeInsets.all(20.0),
              child: const Center(
                child: Text('Something went wrong! Please try again later.'),
              ),
            );
          }
        },
      ),
    );
  }
}
