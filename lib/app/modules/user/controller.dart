import 'package:get/get.dart';

import 'repository.dart';

class UserController extends GetxController {
  static const tag = "UserController";
  final UserRepository repository;
  UserController(this.repository);
}
