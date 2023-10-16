import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? fontStyle = Theme.of(context).textTheme.titleLarge;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          elevation: 0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Valor: 10".toString(), style: fontStyle),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.plus_one_outlined),
        ));
  }
}
