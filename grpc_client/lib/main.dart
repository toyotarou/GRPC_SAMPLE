import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'generated/helloworld.pbgrpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gRPC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _response = 'Response will be shown here';

  Future<void> _sendRequest() async {
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    final stub = GreeterClient(channel);

    try {
      final response = await stub.sayHello(HelloRequest()..name = 'Flutter');
      setState(() {
        _response = response.message;
      });
    } catch (e) {
      setState(() {
        _response = 'Error: $e';
      });
    } finally {
      await channel.shutdown();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('gRPC Client'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_response),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _sendRequest,
              child: const Text('Send gRPC Request'),
            ),
          ],
        ),
      ),
    );
  }
}
