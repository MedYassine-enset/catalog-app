import 'package:catalog_app/widgets/drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyAppDrawer(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Home Page"
          ,),
      ),
    );
  }
}