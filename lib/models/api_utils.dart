import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pet_user_app/models/apiHelper.dart';
import 'package:pet_user_app/models/entites/freelencer.dart';
import 'package:pet_user_app/models/entites/pets.dart';
import 'package:pet_user_app/models/entites/products.dart';
import 'package:pet_user_app/models/entites/vets.dart';

class ApiUtils {
  static final ApiUtils _instance = ApiUtils._internal();
  APIHelper _apiHelper = APIHelper();

  factory ApiUtils() {
    return _instance;
  }

  ApiUtils._internal();

  Future<List<Products>> getAllProducts() async {
    Response response = await _apiHelper.dio.get("/shop/getAll");
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((productJson) => Products.fromJson(productJson))
          .toList();
    }
    return null;
  }

  Future<List<Vets>> getAllVets() async {
    Response response = await _apiHelper.dio.get("/vet/getAll");
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((vetsJson) => Vets.fromJson(vetsJson))
          .toList();
    }
    return null;
  }

  Future<List<Freelencer>> getAllFreelencer() async {
    Response response = await _apiHelper.dio.get("/freelencer/getAll");
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((freelencerJson) => Freelencer.fromJson(freelencerJson))
          .toList();
    }
    return null;
  }

  Future<List<Pets>> getAllPets() async {
    Response response = await _apiHelper.dio.get("/pets/getAll");
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((petsJson) => Pets.fromJson(petsJson))
          .toList();
    }
    return null;
  }
}
