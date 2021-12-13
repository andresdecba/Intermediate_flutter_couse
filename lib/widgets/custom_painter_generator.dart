/*
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
CustomPaint(
  //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    //size: Size(WIDTH, (WIDTH*1).toDouble()), 
    painter: RPSCustomPainter(),
)

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {

    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.9579507,size.height*0.5997025);
    path_0.cubicTo(size.width*1.012683,size.height*0.5449701,size.width*1.012681,size.height*0.4559102,size.width*0.9579489,size.height*0.4011761);
    path_0.cubicTo(size.width*0.9314366,size.height*0.3746620,size.width*0.8961831,size.height*0.3600616,size.width*0.8586866,size.height*0.3600616);
    path_0.cubicTo(size.width*0.8497834,size.height*0.3600616,size.width*0.8410176,size.height*0.3608732,size.width*0.8324683,size.height*0.3624736);
    path_0.cubicTo(size.width*0.8697271,size.height*0.3369877,size.width*0.8938715,size.height*0.2941320,size.width*0.8938715,size.height*0.2464789);
    path_0.cubicTo(size.width*0.8938715,size.height*0.1690739,size.width*0.8308979,size.height*0.1061004,size.width*0.7534930,size.height*0.1061004);
    path_0.cubicTo(size.width*0.7057447,size.height*0.1061004,size.width*0.6628151,size.height*0.1303415,size.width*0.6373486,size.height*0.1677254);
    path_0.cubicTo(size.width*0.6457746,size.height*0.1232835,size.width*0.6325581,size.height*0.07578521,size.width*0.5987958,size.height*0.04202289);
    path_0.cubicTo(size.width*0.5722834,size.height*0.01550880,size.width*0.5370299,size.height*0.0009066901,size.width*0.4995334,size.height*0.0009066901);
    path_0.cubicTo(size.width*0.4620370,size.height*0.0009066901,size.width*0.4267834,size.height*0.01550880,size.width*0.4002711,size.height*0.04202289);
    path_0.cubicTo(size.width*0.3665070,size.height*0.07578521,size.width*0.3532923,size.height*0.1232852,size.width*0.3617183,size.height*0.1677271);
    path_0.cubicTo(size.width*0.3362518,size.height*0.1303433,size.width*0.2933204,size.height*0.1061004,size.width*0.2455722,size.height*0.1061004);
    path_0.cubicTo(size.width*0.1681673,size.height*0.1061004,size.width*0.1051937,size.height*0.1690739,size.width*0.1051937,size.height*0.2464789);
    path_0.cubicTo(size.width*0.1051937,size.height*0.2941338,size.width*0.1293363,size.height*0.3369877,size.width*0.1665951,size.height*0.3624718);
    path_0.cubicTo(size.width*0.1580458,size.height*0.3608732,size.width*0.1492835,size.height*0.3600616,size.width*0.1403785,size.height*0.3600616);
    path_0.cubicTo(size.width*0.1028820,size.height*0.3600616,size.width*0.06763028,size.height*0.3746637,size.width*0.04111620,size.height*0.4011778);
    path_0.cubicTo(size.width*0.01460211,size.height*0.4276919,0,size.height*0.4629454,0,size.height*0.5004401);
    path_0.cubicTo(0,size.height*0.5379366,size.width*0.01460211,size.height*0.5731884,size.width*0.04111620,size.height*0.5997042);
    path_0.cubicTo(size.width*0.06763028,size.height*0.6262166,size.width*0.1028838,size.height*0.6408187,size.width*0.1403785,size.height*0.6408187);
    path_0.cubicTo(size.width*0.1492817,size.height*0.6408187,size.width*0.1580440,size.height*0.6400070,size.width*0.1665951,size.height*0.6384067);
    path_0.cubicTo(size.width*0.1293363,size.height*0.6638926,size.width*0.1051937,size.height*0.7067482,size.width*0.1051937,size.height*0.7544014);
    path_0.cubicTo(size.width*0.1051937,size.height*0.8318063,size.width*0.1681673,size.height*0.8947782,size.width*0.2455722,size.height*0.8947782);
    path_0.cubicTo(size.width*0.2933204,size.height*0.8947782,size.width*0.3362535,size.height*0.8705370,size.width*0.3617183,size.height*0.8331532);
    path_0.cubicTo(size.width*0.3532923,size.height*0.8775968,size.width*0.3665088,size.height*0.9250968,size.width*0.4002711,size.height*0.9588592);
    path_0.cubicTo(size.width*0.4267852,size.height*0.9853715,size.width*0.4620387,size.height*0.9999736,size.width*0.4995334,size.height*0.9999736);
    path_0.cubicTo(size.width*0.5370299,size.height*0.9999736,size.width*0.5722834,size.height*0.9853715,size.width*0.5987958,size.height*0.9588574);
    path_0.cubicTo(size.width*0.6325581,size.height*0.9250951,size.width*0.6457729,size.height*0.8775933,size.width*0.6373468,size.height*0.8331514);
    path_0.cubicTo(size.width*0.6628134,size.height*0.8705352,size.width*0.7057447,size.height*0.8947782,size.width*0.7534930,size.height*0.8947782);
    path_0.cubicTo(size.width*0.8308979,size.height*0.8947782,size.width*0.8938715,size.height*0.8318063,size.width*0.8938715,size.height*0.7544014);
    path_0.cubicTo(size.width*0.8938715,size.height*0.7067482,size.width*0.8697271,size.height*0.6638926,size.width*0.8324701,size.height*0.6384067);
    path_0.cubicTo(size.width*0.8410194,size.height*0.6400070,size.width*0.8497834,size.height*0.6408187,size.width*0.8586866,size.height*0.6408187);
    path_0.cubicTo(size.width*0.8961831,size.height*0.6408187,size.width*0.9314366,size.height*0.6262166,size.width*0.9579507,size.height*0.5997025);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.9155916,size.height*0.4435088);
    path_1.cubicTo(size.width*0.8841496,size.height*0.4120687,size.width*0.8331725,size.height*0.4120687,size.width*0.8017306,size.height*0.4435088);
    path_1.lineTo(size.width*0.6369489,size.height*0.4435088);
    path_1.lineTo(size.width*0.7534683,size.height*0.3269912);
    path_1.cubicTo(size.width*0.7979331,size.height*0.3269912,size.width*0.8339789,size.height*0.2909454,size.width*0.8339789,size.height*0.2464789);
    path_1.cubicTo(size.width*0.8339789,size.height*0.2020141,size.width*0.7979331,size.height*0.1659665,size.width*0.7534683,size.height*0.1659665);
    path_1.cubicTo(size.width*0.7090018,size.height*0.1659665,size.width*0.6729560,size.height*0.2020141,size.width*0.6729560,size.height*0.2464789);
    path_1.lineTo(size.width*0.5564384,size.height*0.3629982);
    path_1.lineTo(size.width*0.5564384,size.height*0.1982165);
    path_1.cubicTo(size.width*0.5878785,size.height*0.1667746,size.width*0.5878785,size.height*0.1157975,size.width*0.5564366,size.height*0.08435563);
    path_1.cubicTo(size.width*0.5249947,size.height*0.05291373,size.width*0.4740176,size.height*0.05291373,size.width*0.4425757,size.height*0.08435563);
    path_1.cubicTo(size.width*0.4111338,size.height*0.1157975,size.width*0.4111338,size.height*0.1667746,size.width*0.4425757,size.height*0.1982165);
    path_1.lineTo(size.width*0.4425757,size.height*0.3629982);
    path_1.lineTo(size.width*0.3260581,size.height*0.2464789);
    path_1.cubicTo(size.width*0.3260581,size.height*0.2020141,size.width*0.2900123,size.height*0.1659665,size.width*0.2455458,size.height*0.1659665);
    path_1.cubicTo(size.width*0.2010810,size.height*0.1659665,size.width*0.1650335,size.height*0.2020141,size.width*0.1650335,size.height*0.2464789);
    path_1.cubicTo(size.width*0.1650335,size.height*0.2909454,size.width*0.2010810,size.height*0.3269912,size.width*0.2455458,size.height*0.3269912);
    path_1.lineTo(size.width*0.3620634,size.height*0.4435088);
    path_1.lineTo(size.width*0.1972835,size.height*0.4435088);
    path_1.cubicTo(size.width*0.1658398,size.height*0.4120669,size.width*0.1148627,size.height*0.4120687,size.width*0.08342077,size.height*0.4435106);
    path_1.cubicTo(size.width*0.05197887,size.height*0.4749525,size.width*0.05197887,size.height*0.5259296,size.width*0.08342077,size.height*0.5573715);
    path_1.cubicTo(size.width*0.1148627,size.height*0.5888134,size.width*0.1658415,size.height*0.5888134,size.width*0.1972835,size.height*0.5573715);
    path_1.lineTo(size.width*0.3620634,size.height*0.5573715);
    path_1.lineTo(size.width*0.2455458,size.height*0.6738891);
    path_1.cubicTo(size.width*0.2010810,size.height*0.6738891,size.width*0.1650335,size.height*0.7099349,size.width*0.1650335,size.height*0.7544014);
    path_1.cubicTo(size.width*0.1650335,size.height*0.7988662,size.width*0.2010810,size.height*0.8349137,size.width*0.2455458,size.height*0.8349137);
    path_1.cubicTo(size.width*0.2900123,size.height*0.8349137,size.width*0.3260581,size.height*0.7988662,size.width*0.3260581,size.height*0.7544014);
    path_1.lineTo(size.width*0.4425757,size.height*0.6378838);
    path_1.lineTo(size.width*0.4425757,size.height*0.8026637);
    path_1.cubicTo(size.width*0.4111338,size.height*0.8341056,size.width*0.4111338,size.height*0.8850845,size.width*0.4425757,size.height*0.9165264);
    path_1.cubicTo(size.width*0.4740176,size.height*0.9479683,size.width*0.5249965,size.height*0.9479683,size.width*0.5564384,size.height*0.9165264);
    path_1.cubicTo(size.width*0.5878785,size.height*0.8850845,size.width*0.5878785,size.height*0.8341056,size.width*0.5564384,size.height*0.8026637);
    path_1.lineTo(size.width*0.5564384,size.height*0.6378838);
    path_1.lineTo(size.width*0.6729560,size.height*0.7544014);
    path_1.cubicTo(size.width*0.6729560,size.height*0.7988662,size.width*0.7090018,size.height*0.8349137,size.width*0.7534683,size.height*0.8349137);
    path_1.cubicTo(size.width*0.7979331,size.height*0.8349137,size.width*0.8339789,size.height*0.7988662,size.width*0.8339789,size.height*0.7544014);
    path_1.cubicTo(size.width*0.8339789,size.height*0.7099349,size.width*0.7979331,size.height*0.6738891,size.width*0.7534683,size.height*0.6738891);
    path_1.lineTo(size.width*0.6369489,size.height*0.5573715);
    path_1.lineTo(size.width*0.8017306,size.height*0.5573715);
    path_1.cubicTo(size.width*0.8331725,size.height*0.5888134,size.width*0.8841496,size.height*0.5888134,size.width*0.9155916,size.height*0.5573715);
    path_1.cubicTo(size.width*0.9470334,size.height*0.5259296,size.width*0.9470334,size.height*0.4749507,size.width*0.9155916,size.height*0.4435088);

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = Color(0xffFFB13B).withOpacity(1.0);
canvas.drawPath(path_1,paint_1_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}


*/