import 'package:flutter/material.dart';
import 'package:flutter_app/components/carousel/CarouselBrands.dart';
import 'package:flutter_app/components/product/ProductOffers.dart';
import 'package:flutter_app/components/titleViews/titlePurple.dart';

import '/components/carousel/CarouselBanner.dart';
import '/components/header/search_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(1, 15, 32, 1),
          elevation: 0,
          title: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: SearchHeader(),
          )),
      body: Container(
        color: const Color.fromRGBO(236, 240, 243, 1),
        child: ListView(
          children: [
            CarouselBanner(),
            TitlePurple(title: 'Marcas parceiras'),
            CarouselBrands(),
            TitlePurple(title: 'Promoções'),
            const ProductOffers(),
          ],
        ),
      ),
    );
  }
}
