import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Raju Bolbachaan"),
            accountEmail: Text("raju@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/raju.jpg')
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text("Transactions"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: const Text("Reports"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: const Text("Contact"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
