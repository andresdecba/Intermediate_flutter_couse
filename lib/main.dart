import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:slideshow/pages/pinterest_page.dart';
import 'package:slideshow/theme/theme.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (_) => ThemeChanger(),
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: OrientationBuilder(
        builder: (context, orientation) {
          return PinterestPage();
        },
      ),
      theme: themeChanger.currentTheme,
    );
  }
}
