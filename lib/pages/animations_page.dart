import 'package:flutter/material.dart';
import 'package:slideshow/widgets/cuadrado_animado_1.dart';
import 'package:slideshow/widgets/cuadrado_animado_2.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            //// anim 1
            CuadradoAnimado2(),
            SizedBox( height: 100),

            //// anim 2
            CuadradoAnimado1(),
            SizedBox( height: 60),
            Text('Tap para comenzar la animación', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}


