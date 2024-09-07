import 'package:flutter/material.dart';

class Product {
  final String image, title, description, type, size;

  final Color color;

  final int price, id;

  Product({
    required this.color,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.type,
    required this.id,
    required this.size,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/phone1.png",
    title: "Samsung Galaxy S22 Ultra",
    price: 899,
    type: "Flagship",
    description: "6.8-inch Dynamic AMOLED display, S-Pen support",
    color: Colors.red,
    size: "6.8 inches",
  ),
  Product(
    id: 2,
    image: "assets/images/phone2.png",
    title: "Samsung Galaxy S21",
    price: 699,
    type: "Flagship",
    description: "6.2-inch Dynamic AMOLED display, triple-camera setup",
    color: Colors.purple,
    size: "6.2 inches",
  ),
  Product(
    id: 3,
    image: "assets/images/phone3.png",
    title: "Samsung Galaxy A52",
    price: 449,
    type: "Mid-range",
    description: "6.5-inch Super AMOLED display, quad-camera setup",
    color: Colors.green,
    size: "6.5 inches",
  ),
  Product(
    id: 4,
    image: "assets/images/phone4.png",
    title: "Samsung Galaxy Note 20",
    price: 799,
    type: "Flagship",
    description: "6.7-inch Dynamic AMOLED display, S-Pen support",
    color: Colors.cyan,
    size: "6.7 inches",
  ),
  Product(
    id: 5,
    image: "assets/images/phone5.png",
    title: "Samsung Galaxy A72",
    price: 549,
    type: "Mid-range",
    description: "6.7-inch Super AMOLED display, quad-camera setup",
    color: Colors.lime,
    size: "6.7 inches",
  ),
  Product(
    id: 6,
    image: "assets/images/phone6.png",
    title: "Samsung Galaxy S20 FE",
    price: 599,
    type: "Flagship",
    description: "6.5-inch Dynamic AMOLED display, triple-camera setup",
    color: Colors.yellow,
    size: "6.5 inches",
  ),
];