import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:slideshow/widgets/drawer.dart';
import 'package:slideshow/widgets/pinterest_menu.dart';

class PinterestPage extends StatelessWidget {

  final ScrollController scrollController = ScrollController();
  final PageStorageKey keeey = const PageStorageKey(1);

  PinterestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(),

      drawer: const MyDrawer(),

        floatingActionButton: PinterestMenu(
          scrollController: scrollController,
          color: Colors.blueGrey,
          selectedColor: Colors.red,
          items: [
            PinterestButton(onPress: () {}, icon: Icons.pie_chart),
            PinterestButton(onPress: () {}, icon: Icons.search),
            PinterestButton(onPress: () {}, icon: Icons.notifications),
            PinterestButton(onPress: () {}, icon: Icons.supervised_user_circle),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


        body: StaggeredGridView.countBuilder(
          key: keeey,
          controller: scrollController,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          crossAxisCount: 4,
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) => Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: CircleAvatar(child: Text('$index')),
            ),
          ),
          staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      );
  }
}