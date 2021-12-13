import 'package:flutter/material.dart';
import 'package:slideshow/widgets/slideshow.dart';

class CustomPainterPage extends StatelessWidget {
  
  const CustomPainterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MySlideshow(
      images: [
        // diaginal
        Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.amber,
            child: CustomPaint(
              painter: _PainterDiagonal(),
            ),
          ),
        ),

        // triangular
        Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.amber,
            child: CustomPaint(
              painter: _PainterTriangular(),
            ),
          ),
        ),

        // pico
        Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.amber,
            child: CustomPaint(
              painter: _PainterPico(),
            ),
          ),
        ),

        // curvo
        Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.amber,
            child: CustomPaint(
              painter: _PainterCurvo(),
            ),
          ),
        ),

        // onda
        Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.amber,
            child: CustomPaint(
              painter: _PainterOnda(),
            ),
          ),
        ),

        // onda con gradient
        Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.amber,
            child: CustomPaint(
              painter: _PainterOndaConGradiente(),
            ),
          ),
        ),
      ],
    ));
  }
}

class _PainterDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    // propiedades
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 15;

    // dibujar
    final path = Path();

    path.moveTo(0, 0); // optional
    path.lineTo(0, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); // optional

    //dibujar
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _PainterTriangular extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    // propiedades
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 15;

    // dibujar
    final path = Path();

    path.moveTo(0, 0); // optional
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); // optional

    //dibujar
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _PainterPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    // propiedades
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 15;

    // dibujar
    final path = Path();

    path.moveTo(0, 0); // optional
    path.lineTo(0, size.height * 0.4);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); // optional

    //dibujar
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _PainterCurvo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    // propiedades
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 15;

    // dibujar
    final path = Path();

    path.moveTo(0, 0); // optional
    path.lineTo(0, size.height * 0.4);
    path.lineTo(size.width * 0.2, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.6, size.width * 0.8, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); // optional

    //dibujar
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _PainterOnda extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // lapiz
    final paint = Paint();

    // propiedades
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 15;

    // dibujar
    final path = Path();

    path.moveTo(0, 0); // optional
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.25, size.width * 0.5, size.height * 0.5); // primera mitad
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.75, size.width, size.height * 0.5); // segunda mitad
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); // optional

    //dibujar
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _PainterOndaConGradiente extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // rect
    final Rect rect = Rect.fromCircle(
      center: const Offset(20, 200),
      radius: 180,
    );

    // gradiente
    const Gradient gradiente = LinearGradient(
      colors: [
        Colors.blue,
        Colors.green,
        Colors.purple,
      ],
      stops: [0.4, 0.75, 1],
    );

    // lapiz
    final paint = Paint()..shader = gradiente.createShader(rect);

    // propiedades
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 15;

    // dibujar
    final path = Path();

    path.moveTo(0, 0); // optional
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.4, size.width * 0.5, size.height * 0.5); // primera mitad
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.6, size.width, size.height * 0.5); // segunda mitad
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0); // optional

    //dibujar
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


