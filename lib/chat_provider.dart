import 'package:chat/Sse.dart';
import 'package:get/get.dart';

const host = "http://192.168.0.5:8080";

// 통신
class ChatProvider extends GetConnect {
  // Promise (데이터 약속)
  // Stream<Response> getChat(String sender, String receiver) =>
  //     get("$host/sender/$sender/receiver/$receiver").asStream();

  Stream getMsg() {
    final myStream = Sse.connect(
      uri: Uri.parse('http://192.168.0.5:8080/sender/ssar/receiver/cos'),
      closeOnError: true,
      withCredentials: false,
    ).stream;

    return myStream;
    // myStream.listen((event) {
    //   print('Received:' +
    //       DateTime.now().millisecondsSinceEpoch.toString() +
    //       ' : ' +
    //       event.toString());
    // });
  }
}
