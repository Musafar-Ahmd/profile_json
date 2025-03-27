import 'dart:convert';
import 'package:flutter/services.dart';
import '../Model/profile_json.dart';

class ProfileRepository {
  ProfileRepository._privateConstructor();

  static final ProfileRepository _instance =
      ProfileRepository._privateConstructor();

  static ProfileRepository get instance => _instance;

  Future<List<ProfileItemsJsonResponse>?> getProfileJsonData() async {
    var response = await rootBundle.loadString('assets/jsons/profile.json');
    List<dynamic> jsonData = json.decode(response);
    List<ProfileItemsJsonResponse> results = jsonData
        .map((json) => ProfileItemsJsonResponse.fromJson(json))
        .toList();
    return results;
  }
}
