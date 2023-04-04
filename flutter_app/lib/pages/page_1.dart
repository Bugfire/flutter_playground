import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1Page extends StatefulWidget {
  const Page1Page({super.key});
  final String title = 'ページ1';

  @override
  State<Page1Page> createState() => _Page1Page();
}

class _Page1Page extends State<Page1Page> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset('assets/lotties/38909-agx-spaces.json',
                width: 250,
                height: 250,
                frameRate: FrameRate(60),
                repeat: true,
                animate: true,
                controller: _animation, onLoaded: (composition) {
              _animation
                ..duration = composition.duration
                ..repeat();
            }),
            TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.light, size: 40.0),
                    Text("戻る", style: TextStyle(fontSize: 40.0)),
                  ],
                ),
                // ignore: avoid_print
                onPressed: () => {Navigator.of(context).pop()}),
          ],
        ),
      ),
      // const Icon(Icons.add)
    );
  }

  late AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }
}
