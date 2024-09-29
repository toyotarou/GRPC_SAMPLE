import 'dart:async';

import 'package:fixnum/fixnum.dart';

import 'package:grpc/grpc.dart';
import 'src/generated/chat.pbgrpc.dart';
import 'src/generated/helloworld.pbgrpc.dart';
import 'src/generated/decimal_to_binary.pbgrpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    return HelloReply()..message = 'Hello, ${request.name}!';
  }
}

class ConverterService extends ConverterServiceBase {
  @override
  Future<ConvertResponse> convert(
    ServiceCall call,
    ConvertRequest request,
  ) async {
// 2進数に変換
    final result = request.decimal.toRadixString(2);

    return ConvertResponse(
      isCorrect: result == request.binary,
      answer: result,
    );
  }
}

class ChatConnecterService extends ChatConnecterServiceBase {
  final streamController = StreamController<List<Message>>.broadcast();

  final messages = <Message>[];

  @override
  Stream<ChatConnectResponse> connect(
      ServiceCall call, Stream<ChatConnectRequest> request) async* {
    // 現在のメッセージ一覧を設定
    streamController.add(messages);

    // 接続直後に現在のメッセージ一覧を送信
    yield ChatConnectResponse(messages: messages);

    request.listen(
      (event) {
        print('メッセージ: ${event.message}');
        messages.add(
          Message(
            message: event.message,
            unixTime: Int64(DateTime.now().millisecondsSinceEpoch),
          ),
        );
        streamController.add(messages);
      },
    );

    // Streamを返却
    yield* streamController.stream
        .map((messages) => ChatConnectResponse(messages: messages));
  }
}

Future<void> main() async {
  // ignore: deprecated_member_use
  final server = Server(
    [
      GreeterService(),
      ConverterService(),
      ChatConnecterService(),
    ],
  );

  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}
