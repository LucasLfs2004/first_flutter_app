import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class CardProduct extends StatelessWidget {
  const CardProduct({super.key, required this.product});

  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    print(product);
    return Card(
        elevation: 3,
        child: Container(
          height: 334,
          decoration: const BoxDecoration(color: Color.fromRGBO(1, 15, 32, 1)),
          child: const Column(
            children: [
              // Text(product['name']),
            ],
          ),
        ));
  }
}
