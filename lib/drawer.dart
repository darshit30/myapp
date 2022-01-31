import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var decoration;
    return Drawer(
      child: ListView(
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("User Name"),
            accountEmail: Text("User EmailAdress"),
            currentAccountPicture: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.black,
              //backgroundImage: NetworkImage("http://timeye.com/images/widgets/mona.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("account"),
            //subtitle: Text("personal"),
            trailing: Icon(Icons.edit_outlined),
            iconColor: Colors.black,
            tileColor: Colors.blueAccent,
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help Center"),
            trailing: Icon(Icons.help_outline),
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Feedback"),
            focusColor: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
