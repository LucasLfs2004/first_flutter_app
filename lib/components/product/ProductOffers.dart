import 'package:flutter/material.dart';
import 'package:flutter_app/components/product/CardProduct.dart';

import '/requests/Requests.dart';

class ProductOffers extends StatefulWidget {
  const ProductOffers({super.key});

  @override
  _ProductOffers createState() => _ProductOffers();
}

class _ProductOffers extends State<ProductOffers> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchProductsOffers(), // Chama a função de requisição
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          var products = snapshot.data;
          print(products);
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 32),
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products?.length,
              itemBuilder: (BuildContext context, int index) {
                // return Container();
                return CardProduct(product: products?[index]);
              },
            ),
          );
        } else {
          return const Center(child: Text('No data available'));
        }
      },
    );
  }
}
