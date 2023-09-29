import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String tittle;
  final String caption;
  final String imageUrl;

  SlideInfo(this.tittle, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Et laboris excepteur ex reprehenderit laboris reprehenderit fugiat consectetur commodo ut consectetur ea aliqua laboris. Fugiat commodo mollit Lorem qui sunt voluptate voluptate ea reprehenderit incididunt Lorem ex id. Magna aute ipsum ea esse consectetur veniam non velit incididunt id amet exercitation labore excepteur.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Reprehenderit veniam eu dolore pariatur labore. Dolore aliquip est incididunt minim do qui aute do amet laborum reprehenderit do. Anim do sit qui aliqua eu. Commodo laboris deserunt quis ullamco sint aute eiusmod consectetur et in consequat do. Voluptate duis in adipisicing laborum mollit eu enim sint irure nostrud fugiat officia reprehenderit. Aute culpa minim esse occaecat elit labore ex irure cillum. In cupidatat Lorem aliquip enim labore quis fugiat veniam anim.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Adipisicing sint duis commodo sunt reprehenderit. Ea aliqua ipsum quis culpa sint anim ipsum fugiat deserunt quis. Non anim anim minim ullamco sit velit excepteur reprehenderit commodo quis laboris dolor sint quis. Dolor deserunt consectetur commodo aliquip sint. Lorem officia mollit incididunt elit aute. Incididunt anim reprehenderit id quis ut pariatur aute irure anim pariatur consequat.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final PageController pageViewController;
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageViewController = PageController();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                    tittle: slideData.tittle,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text('Salir'),
                onPressed: () => context.pop(),
              )),
          endReached
              ? Positioned(
                  right: 30,
                  bottom: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      child: const Text('Comenzar'),
                      onPressed: () => context.pop(),
                    ),
                  ))
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String tittle;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.tittle, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final tittleStyle = Theme.of(context).textTheme.titleLarge;
    final captioStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(
              tittle,
              style: tittleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captioStyle,
            )
          ],
        ),
      ),
    );
  }
}
