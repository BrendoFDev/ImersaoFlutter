import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantsData extends ChangeNotifier {
  List<Restaurant> restaurants = [];

  Future<void> getRestaurants() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);

    List<dynamic> restaurantData = data['restaurants'];
    for (var restaurant in restaurantData) {
      restaurants.add(Restaurant.fromMap(restaurant));
    }
  }
}
