import 'dart:convert';

import 'package:flutter_app/constants/api_path.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchBanners() async {
  final response = await http.get(Uri.parse('$api_url/banner'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    // print(data);
    return data;
  } else {
    throw Exception('Falha ao carregar dados');
  }
}

Future<List<dynamic>> fetchBrands() async {
  final response = await http.get(Uri.parse('$api_url/brand'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data);
    return data;
  } else {
    throw Exception('Falha ao carregar dados');
  }
}

Future<List<dynamic>> fetchProductsOffers() async {
  final response = await http.get(Uri.parse('$api_url/product/offers/40'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data);
    return data;
  } else {
    throw Exception('Falha ao carregar dados');
  }
}
