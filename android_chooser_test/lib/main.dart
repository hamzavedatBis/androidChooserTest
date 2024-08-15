import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MethodChannel channel = MethodChannel("test.chooser/intent");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: Center(
          child: TextButton(
            child: const Text("Open Chooser Intent"),
            onPressed: () {
              channel.invokeMethod("method");
            },
          ),
        ),
      ),
    );
  }
}
