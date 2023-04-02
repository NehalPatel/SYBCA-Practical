
import 'package:flutter/material.dart';
import 'package:flutter_banking_app/components/my_drawer.dart';

class MyAppTemplate extends StatelessWidget {

  final Widget body;
  const MyAppTemplate({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Golmaal Bank"),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: body,
    );
  }
}

