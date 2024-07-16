import 'package:flutter/material.dart';
import 'package:flutter_app/constants/api_path.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '/requests/Requests.dart';
import 'package:carousel_slider/carousel_slider.dart';

// void main() {
//   runApp(MyApp());
// }

class CarouselBanner extends StatefulWidget {
  @override
  _CarouselBanner createState() => _CarouselBanner();
}

class _CarouselBanner extends State<CarouselBanner> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchBanners(), // Chama a função de requisição
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          var banners = snapshot.data;
          var screenWidth = MediaQuery.of(context).size.width;

          // Calcule a altura da imagem com base na proporção
          var imageHeight = screenWidth * (330 / 1000);
          return Container(
              child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1000 / 330,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
            ),
            items: banners?.map((banner) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.network(
                      api_url + '/image/banner/' + banner['img_banner_mobile'],
                      fit: BoxFit.contain);
                },
              );
            }).toList(),
          ));
        } else {
          return Center(child: Text('No data available'));
        }
      },
    );
  }
}
