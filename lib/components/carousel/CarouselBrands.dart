import 'package:flutter/material.dart';
import 'package:flutter_app/constants/api_path.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '/requests/Requests.dart';
import 'package:carousel_slider/carousel_slider.dart';

// void main() {
//   runApp(MyApp());
// }

class CarouselBrands extends StatefulWidget {
  @override
  _CarouselBrands createState() => _CarouselBrands();
}

class _CarouselBrands extends State<CarouselBrands> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchBrands(), // Chama a função de requisição
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          var brands = snapshot.data;
          var screenWidth = MediaQuery.of(context).size.width;
          print(brands);
          // Calcule a altura da imagem com base na proporção
          var imageHeight = screenWidth * (330 / 1000);
          return Container(
            height: 50,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(1, 15, 32, 1)),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brands?.length,
              itemBuilder: (BuildContext context, int index) {
                // return Container();
                return Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: IconButton(
                      onPressed: () {},
                      icon: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: 100, maxHeight: 35),
                        child: SvgPicture.network(
                          api_url +
                              '/image/brand/' +
                              brands?[index]['brand_logo'],
                        ),
                      ),
                    ));
              },
            ),
          );
        } else {
          return Center(child: Text('No data available'));
        }
      },
    );
  }
}
