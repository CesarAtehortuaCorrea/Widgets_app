import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;
  SlideInfo(this.title, this.caption, this.imageUrl);
}


final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Ad reprehenderit ut velit exercitation ipsum quis in occaecat laboris aute mollit consequat commodo. Amet consequat exercitation nostrud do laboris cillum. Cillum laborum mollit culpa dolor amet nisi non excepteur exercitation velit. Ut culpa adipisicing velit occaecat culpa culpa voluptate culpa irure qui cupidatat. Irure esse anim qui in et pariatur est duis reprehenderit cillum magna.', 'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Sit laborum nulla officia ullamco. Sit dolor id deserunt fugiat amet ad. Sit nostrud duis officia irure ad ad. Elit ea cupidatat mollit est aliquip enim in id. Sint nostrud esse et sunt Lorem ipsum incididunt nulla ut eiusmod elit occaecat cillum. Lorem amet minim qui laboris mollit exercitation ex. Aliquip enim eu enim sint et adipisicing enim amet eu cupidatat officia in.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Enim reprehenderit anim ipsum ipsum ut pariatur nulla minim. Occaecat et eiusmod adipisicing magna. Nostrud dolor sint duis et pariatur culpa culpa do consequat aliquip fugiat.', 'assets/images/3.png'),

];


class AppTutorialScreen extends StatefulWidget {

    static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageviewController = PageController();
  bool enReached = false;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {

      final page = pageviewController.page ?? 0;
      if ( !enReached && page >= (slides.length - 1.5)) {
        setState(() {
          enReached = true;
        });
      }
    });
  }
  @override
    void dispose() {
      pageviewController.dispose();
        super.dispose();
      }
     

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            
            PageView(
              controller: pageviewController,
              physics: const BouncingScrollPhysics(),
                children: slides.map(
                  (slideData) => _Slide(
                    title: slideData.title, 
                    caption: slideData.caption, 
                    imageUrl: slideData.imageUrl
                    )
                  ).toList()         
              ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop() ,
              )
            ),

            enReached ? 
            Positioned(
              bottom: 30,
              right: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                  onPressed: () => context.pop(),
                  child: const Text('Comenzar'),
                ),
              )

            ): const SizedBox(),
          ],
        ),
        );
    }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl
    });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text( title, style:titleStyle),
            const SizedBox(height: 20),
            Text( caption, style: captionStyle)
          ],
        ) ,),
    );
  }
}