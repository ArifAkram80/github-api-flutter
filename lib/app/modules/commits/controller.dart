import 'package:get/get.dart';

import 'repository.dart';

class CommitsController extends GetxController {
  static const tag = "CommitsController";
  final CommitsRepository repository;
  CommitsController(this.repository);
}
