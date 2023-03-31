
import 'package:flutter/material.dart';
import 'package:flutter_banking_app/components/my_app_template.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyAppTemplate(
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
