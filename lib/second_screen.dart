import 'package:flutter/cupertino.dart';

class SecondScreen extends StatelessWidget {
  final String data;

  SecondScreen({this.data});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        actionsForegroundColor: CupertinoColors.white,
        middle: Text('Second Screen'),
      ),
      child: Center(
        child: Text(data),
      ),
    );
  }
}
