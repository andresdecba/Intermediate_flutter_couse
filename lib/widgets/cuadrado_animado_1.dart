import 'package:flutter/material.dart';
import 'dart:math' as Math;


class CuadradoAnimado1 extends StatefulWidget {
  const CuadradoAnimado1({
    Key key,
  }) : super(key: key);

  @override
  State<CuadradoAnimado1> createState() => _CuadradoAnimado1State();
}

class _CuadradoAnimado1State extends State<CuadradoAnimado1> with SingleTickerProviderStateMixin {
  //
  AnimationController controller;
  Animation rotacion;
  Animation opacidad;
  Animation escalar;

  @override
  void initState() {
    /////////// 1: definir controladore en init state
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));

    /////////// 2: configurar la animacion
    rotacion = Tween(begin: 0.0, end: 2 * Math.pi).animate(
      //poner solo el controller para una animacion lineal, CurvedAnimation para curvas
      CurvedAnimation(parent: controller, curve: Curves.easeIn),
    );

    opacidad = Tween(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.5, curve: Curves.easeInOut)),
    );

    escalar = Tween(begin: 0.5, end: 1.5).animate(CurvedAnimation(parent: controller, curve: Curves.bounceIn));

    // controller.addListener(() {
    //   if (controller.status == AnimationStatus.completed) {
    //     controller.reverse();
    //   }
    // });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ////////// 5: reproducir animacion en el init state para que empiece al cargar la pagina
    /// o puedo poner el controller.forward() .repeat(), etc. en un boton o builder para dispararlo
    //controller.forward();

    ////////// 3: crear con el widget AnimatedBuilder
    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget child) {

        ///////// 4: crear con el widget Transform .rotate, .scale o .translate
        return GestureDetector(
          onTap: () {
            controller.forward().then((value) => controller.reset());
          },
          child: Transform.scale(
            scale: escalar.value,
            //scaleY: escalar.value,
            child: Transform.rotate(
              angle: rotacion.value,
              child: Opacity(
                opacity: opacidad.value,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}