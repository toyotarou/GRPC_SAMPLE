import 'package:grpc/grpc.dart';
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

Future<void> main() async {
  // ignore: deprecated_member_use
  final server = Server(
    [
      GreeterService(),
      ConverterService(),
    ],
  );

  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}
