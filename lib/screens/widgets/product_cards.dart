import 'package:nile/models/models.dart';
import 'package:nile/screens/screens.dart';

class ProductCard extends StatelessWidget {
  final double rightPositon;
  final Product product;
  final double cardwidth;
  final bool iswishlist;
  final double divide;
  const ProductCard({
    super.key,
    required this.product,
    this.cardwidth = 2.5,
    this.rightPositon = 5,
    this.iswishlist = false,  this.divide=2.5,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / cardwidth,
            height: 150.0,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              right: rightPositon,
              top: 78.0,
              // left: 5,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5 - rightPositon,
                height: 70,
                decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
              )),
          Positioned(
              // left: 5,
              right: rightPositon,
              top: 77,
              child: Container(
                width: MediaQuery.of(context).size.width / divide,
                height: 70,
                decoration: const BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
                            ),
                            Text(
                              '\$${product.price}',
                              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            )),
                      ),
                      iswishlist
                          ? Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    )),
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
