import 'package:get/get.dart';

import '../../../core/networking/api_result.dart';
import '../../data/models/user_profile/user_profile.dart';
import 'repository.dart';

class UserController extends GetxController {
  static const tag = "UserController";
  final UserRepository repository;
  UserController(this.repository);

  var userProfile = Result<UserProfile>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    _getUserInfo();
  }

  void _getUserInfo() async {
    userProfile.value = Result.loading();
    userProfile.value = await repository.getUserProfile(username: "dnfield");
  }
}
