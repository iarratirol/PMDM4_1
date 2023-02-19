import 'package:flutter/material.dart';
import 'package:estado/date_screen.dart';
import 'package:estado/alert_screen.dart';
import 'package:estado/slider_screen.dart';
import 'package:estado/switch_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Estado ejercicio 1';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless vs Stateful'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.calendar_today),
                text: 'Date',
              ),
              Tab(
                icon: Icon(Icons.warning),
                text: 'Alert',
              ),
              Tab(
                icon: Icon(Icons.switch_video),
                text: 'Switch',
              ),
              Tab(
                icon: Icon(Icons.slideshow_rounded),
                text: 'Slider',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: GetDate(),
            ),
            Center(
              child: DialogExample(),
            ),
            Center(
              child: SwitchExample(),
            ),
            Center(
              child: SliderExample(),
            ),
          ],
        ),
      ),
    );
  }
}
