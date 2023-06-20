import 'package:flutter/material.dart';
import 'package:lifecycle_observer/lifecycle_event_handler.dart';
import 'package:lifecycle_observer/notifications.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  lifecycleEventHandler.init();
  initLocalNotifications();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
