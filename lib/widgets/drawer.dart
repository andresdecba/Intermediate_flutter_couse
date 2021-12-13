import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slideshow/routes/routes.dart';
import 'package:slideshow/theme/theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final themeChanger = Provider.of<ThemeChanger>(context);

    return Drawer(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const CircleAvatar(
                child: Icon(
                  Icons.code_rounded,
                  size: 50,
                ),
                radius: 50,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: routes.length,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      trailing: Icon(routes[index].icon),
                      title: Text(routes[index].title),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => routes[index].page)),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              /////////// LIGHT MODE
              ListTile(
                leading: const Icon(Icons.light_mode),
                title: const Text('Light Mode'),
                trailing: Switch(
                  value: themeChanger.lightTheme,
                  onChanged: (value) => themeChanger.lightTheme = value,
                ),
              ),

              /////////// DARK MODE
              ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark Mode'),
                trailing: Switch(
                  value: themeChanger.darkTheme,
                  onChanged: (value) => themeChanger.darkTheme = value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
