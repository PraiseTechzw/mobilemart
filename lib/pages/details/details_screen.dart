import 'package:flutter/material.dart';
import 'package:mobilemart/models/product.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.color, // Background with product color
      appBar: AppBar(
        backgroundColor: widget.product.color.withOpacity(0.8),
        title: const Text("Product Details"),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Product Image
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: widget.product.color.withOpacity(0.4),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Center(
              child: Image.asset(widget.product.image),
            ),
          ),
          
          const SizedBox(height: 20),

          // White card for details
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white, // White background for details
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // Price
                  Text(
                    "\$${widget.product.price}",
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  
                  const SizedBox(height: 10),
                  
                  // Size and Color Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Size
                      Row(
                        children: [
                          const Text(
                            "Size: ",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "${widget.product.size} cm",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      
                      // Color Options
                      Row(
                        children: [
                          const Text(
                            "Color: ",
                            style: TextStyle(fontSize: 16),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: widget.product.color,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Product Description
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Quantity Selector
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (quantity > 1) quantity--;
                          });
                        },
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                      Text(
                        "$quantity",
                        style: const TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                    ],
                  ),
                  
                  const Spacer(),
                  
                  // Buy Now and Cart Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Cart Button
                      ElevatedButton.icon(
                        onPressed: () {
                          // Add to Cart Action
                        },
                        icon: const Icon(Icons.shopping_cart_outlined),
                        label: const Text("Add to Cart"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      // Buy Now Button
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Buy Now Action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                          ),
                          child: const Text("BUY NOW"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
