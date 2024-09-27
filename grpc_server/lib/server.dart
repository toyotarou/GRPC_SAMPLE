import 'package:grpc/grpc.dart';
import 'src/generated/helloworld.pbgrpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    return HelloReply()..message = 'Hello, ${request.name}!';
  }
}

Future<void> main() async {
  // ignore: deprecated_member_use
  final server = Server([GreeterService()]);

  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}
