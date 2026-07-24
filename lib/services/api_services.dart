import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:nexar_platform/screens/HomeScreen.dart';
import 'package:nexar_platform/screens/LoginScreen.dart';

Future<void> registerUser(String username,String email,String password) async {
  try {
    final dio = Dio();
    final response = await dio.post(
      'http://127.0.0.1:8000/api/account/register/',
      data: {
        'username': username,
        'email': email,
        'password': password,
      },
    );
    Get.to(HomeScreen());
    print(response.data);
  } on DioException catch (e) {
    print('Status Code: ${e.response?.statusCode}');
    print('Response Data: ${e.response?.data}');
  }
}