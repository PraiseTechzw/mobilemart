import 'package:flutter/material.dart';
import 'package:mobilemart/models/product.dart';
import 'package:mobilemart/pages/details/details_screen.dart';
import 'package:mobilemart/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Track selected category index
  int selectedCategoryIndex = 0;

  // List of categories
final List<String> categories = [
  'All',
  'Best Sellers',
  'Deals & Discounts',
  'Top Rated',
  'Latest Models'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", width: 100, height: 100),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child:  Text(
              'Samsung Phone',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Categories with Indicator
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(categories.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategoryIndex = index;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: selectedCategoryIndex == index ? Colors.orange : Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Add underline for selected category
                      if (selectedCategoryIndex == index)
                        Container(
                          height: 2,
                          width: 20,
                          color: Colors.orange,
                        )
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 10),
          // Product Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: buildProductGrid(),
            ),
          ),
        ],
      ),
    );
  }
Widget buildProductGrid() {
  return GridView.builder(
    itemCount: products.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      childAspectRatio: 0.75,
    ),
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailsScreen(product: products[index]),
            ),
          );
        },
        child: ProductCard(product: products[index]),
      );
    },
  );
}

}

