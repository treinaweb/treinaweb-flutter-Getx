import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class MyAppClient extends GetConnect {
  final String _baseUrl = "http://localhost:3002/api";
  @override
  void onInit() {
    httpClient.baseUrl = _baseUrl;
    httpClient.timeout = const Duration(seconds: 30);

    httpClient.addRequestModifier(
      (Request request) {
        const _header = {"Content-Type": "application/json"};
        request.headers.clear();
        request.headers.addAll(_header);
        return request;
      },
    );
    super.onInit();
  }
}
