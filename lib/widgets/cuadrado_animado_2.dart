import 'package:flutter/material.dart';



class CuadradoAnimado2 extends StatefulWidget {
  const CuadradoAnimado2({Key key}) : super(key: key); 
  @override
  _CuadradoAnimado2State createState() => _CuadradoAnimado2State();
}

class _CuadradoAnimado2State extends State<CuadradoAnimado2> with SingleTickerProviderStateMixin {

  AnimationController controller;
  // animaciones
  Animation<double> moverDerecha;
  Animation<double> moverArriba;
  Animation<double> moverIzquierda;
  Animation<double> moverAbajo;


  @override
  void initState() { 
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration( milliseconds: 4500 ));

    moverDerecha = Tween( begin: 0.0, end: 100.0 ).animate(
      CurvedAnimation(parent: controller, curve: const Interval(0, 0.25, curve: Curves.bounceOut ))
    );

    moverArriba = Tween( begin: 0.0, end: -100.0 ).animate(
      CurvedAnimation(parent: controller, curve: const Interval(0.25, 0.5, curve: Curves.bounceOut ))
    );

    moverIzquierda = Tween( begin: 0.0, end: -100.0 ).animate(
      CurvedAnimation(parent: controller, curve: const Interval(0.5, 0.75, curve: Curves.bounceOut ))
    );

    moverAbajo = Tween( begin: 0.0, end: 100.0 ).animate(
      CurvedAnimation(parent: controller, curve: const Interval(0.75, 1.0, curve: Curves.bounceOut ))
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    controller.repeat();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget child) {
        return Transform.translate(
          offset: Offset(moverDerecha.value + moverIzquierda.value, moverArriba.value + moverAbajo.value ),
          child: child,
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: const BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}