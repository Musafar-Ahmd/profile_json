import 'package:flutter/material.dart';
import '../Model/profile_json.dart';
import '../Repository/profile_repository.dart';

class ProfileViewModel extends ChangeNotifier {
  List<ProfileItemsJsonResponse> profileJsonresponse = [];

  getProfilejsonData() async {
    profileJsonresponse =
        await ProfileRepository.instance.getProfileJsonData() ?? [];
    notifyListeners();
  }
}
