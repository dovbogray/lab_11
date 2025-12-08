import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'container_config_provider.dart';
import 'widgets/sliders_section.dart';
import 'widgets/red_container.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContainerConfigProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Lab 11 Provider')),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(flex: 1, child: SlidersSection()),
              Divider(),
              Expanded(
                  flex: 2,
                  child: Center(child: RedContainerDisplay())
              ),
            ],
          ),
        ),
      ),
    );
  }
}