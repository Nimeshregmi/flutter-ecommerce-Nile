
import 'package:nile/models/models.dart';
import 'package:nile/screens/screens.dart';

class AppRouter {
  // ignore: non_constant_identifier_names
  static Route OnGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case WishlistScreen.routeName:
        return WishlistScreen.route();

      case ProductScreen.routeName:
        return ProductScreen.route(products: settings.arguments as Product);

      case CatalogScreen.routeName:
           return CatalogScreen.route(category: settings.arguments as Category);
      default:
        return _errorroute();
    }
  }

  static Route _errorroute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Error Occured"),
        ),
      ),
    );
  }
}
