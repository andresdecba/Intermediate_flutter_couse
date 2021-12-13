import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slideshow/widgets/slideshow.dart';


class SlideshowPage extends StatelessWidget {
  const SlideshowPage({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MySlideshow(
        secondaryColor: Colors.grey,
        primaryColor: Colors.blueAccent,
        images: [
          SvgPicture.asset('assets/images/image_1.svg'),
          SvgPicture.asset('assets/images/image_2.svg'),
          SvgPicture.asset('assets/images/image_3.svg'),
        ],
      ),
    );
  }
}