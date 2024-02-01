
import 'package:nile/models/models.dart';
import 'package:nile/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Nile to uniform',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                // autoPlay: true,
              ),
              items: Category.categories.map((e) => HeroSlider(category: e)).toList(),
            ),
            const SectionTitle(
              title: "RECOMMENDED",
            ),
             ProductCarousel(product: Product.products.where((element) => element.isRecommended).toList()),
            const SectionTitle(
              title: "POPULAR",
            ),
             ProductCarousel(product: Product.products.where((element) => element.isPopular).toList()),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }
}

