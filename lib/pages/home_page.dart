import 'package:flutter/material.dart';
import 'package:untitled/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int days = 10;
    String name = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:  Center(
        child: Container(
          child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
