import 'package:chat/chat_provider.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final chatProvider = ChatProvider();
  final data = "".obs;

  @override
  void onInit() {
    super.onInit();
    Stream stream = chatProvider.getMsg();
    stream.listen((event) {
      data.value = event.toString();
    });
  }
}
