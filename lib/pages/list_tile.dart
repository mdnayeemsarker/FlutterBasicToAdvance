import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile "),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Poco M2"),
            subtitle: Text("Xiome"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("Poco M2"),
            subtitle: Text("Xiome"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("Poco M2"),
            subtitle: Text("Xiome"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("Poco M2"),
            subtitle: Text("Xiome"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("Poco M2"),
            subtitle: Text("Xiome"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("Poco M2"),
            subtitle: Text("Xiome"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.add_a_photo),
          ),
          ListTile(
            title: Text("Poco M2"),
            subtitle: Text("Xiome"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}
