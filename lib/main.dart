import 'package:flutter/cupertino.dart';
import 'package:flutter_navigation/second_screen.dart';

void main() {
  runApp(CupertinoApp(
    //Configure a Theme
    theme: CupertinoThemeData(
      //Primary color used for icons, text field cursor,...,etc.
      primaryColor: CupertinoColors.systemOrange,
      //Screen Top App Bar
      barBackgroundColor: CupertinoColors.systemGreen,
      //Screen background
      scaffoldBackgroundColor: CupertinoColors.systemGrey6,
    ),
    debugShowCheckedModeBanner: false, //remove debug banner
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        //inside "build" function
        navigationBar: CupertinoNavigationBar(
          middle: Text('First Screen'),
        ),
        child: Center(
            child: CupertinoButton(
          onPressed: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => SecondScreen(data: "Hello :)"),
              )),
          child: const Text('Go to Next Screen'),
        )));
  }
}
