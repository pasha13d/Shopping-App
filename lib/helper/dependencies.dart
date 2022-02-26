import 'package:get/get.dart';
import 'package:shopping_app/controllers/popular_product_controller.dart';
import 'package:shopping_app/data/api/api_client.dart';
import 'package:shopping_app/data/repository/popular_product_repo.dart';

Future<void> init() async {
  /// apiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));
  /// repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  /// controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}