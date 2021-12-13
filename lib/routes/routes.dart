
import 'package:flutter/material.dart';
import 'package:slideshow/pages/animations_page.dart';
import 'package:slideshow/pages/custom_painters_page.dart';
import 'package:slideshow/pages/pinterest_page.dart';
import 'package:slideshow/pages/slideshow_page.dart';


///////////// routes ///////////

List routes = <_Route> [

  _Route(Icons.ac_unit , 'Pinterest page', PinterestPage()),
  _Route(Icons.adb_outlined, 'Slides page', const SlideshowPage()),
  _Route(Icons.format_paint_rounded, 'Custom painter page', const CustomPainterPage()),
  _Route(Icons.animation, 'Animations page', const AnimationsPage()),



];

class _Route {
  final IconData icon;
  final String title;
  final Widget page;

  _Route(this.icon, this.title, this.page);
}


