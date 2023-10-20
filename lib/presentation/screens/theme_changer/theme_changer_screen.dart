import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    //Con StateProvider
    //final isDarkValue = ref.watch(isDarkProvider);

    //Con StateNotifierProvider
    final isDarkValue = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: (() {
              //Con StateProvider
              //ref.read(isDarkProvider.notifier).update((state) => !state);

              //Con StateNotifierProvider
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            }),
            icon: Icon(isDarkValue
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);

    //Con StateProvider
    //final selectedColor = ref.watch(selectColorProvider);

    //Con StateNotifierProvider
    final selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
            title: Text(
              'Este color',
              style: TextStyle(color: color),
            ),
            subtitle: Text('${color.value}'),
            activeColor: color,
            value: index,
            groupValue: selectedColor,
            onChanged: (value) {
              //Con StateProvider
              //ref.read(selectColorProvider.notifier).update((state) => index);

              //Con StateNotifierProvider
              ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
            });
      },
    );
  }
}
