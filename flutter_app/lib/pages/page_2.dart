import 'package:flutter/material.dart';

class Page2Page extends StatefulWidget {
  const Page2Page({super.key});
  final String title = 'ページ2';

  @override
  State<Page2Page> createState() => _Page2Page();
}

class _Page2Page extends State<Page2Page> {
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
}
