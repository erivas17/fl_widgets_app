import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickValue = ref.watch(counterProvider);
    final bool isDarkValue = ref.watch(isDarkProvider);
    TextStyle? fontStyle = Theme.of(context).textTheme.titleLarge;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          actions: [
            IconButton(
              onPressed: (() {
                ref.read(isDarkProvider.notifier).update((state) => !state);
              }),
              icon: Icon(isDarkValue
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
            )
          ],
          elevation: 0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Valor: $clickValue", style: fontStyle),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //1ra forma
            //ref.read(counterProvider.notifier).state++;

            //2da forma
            ref.read(counterProvider.notifier).update((state) => state + 1);
          },
          child: const Icon(Icons.plus_one_outlined),
        ));
  }
}
