import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text("Chats"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.green,
      ),






      body: Center(
        child: ListView(
          children: [
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem(),

          ],
        ),
      ),





      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  ListTile _listItem() {
    return ListTile(
            leading: CircleAvatar(
              child: Text("AW"),
            ),
            title: Text("Mucosa ...."),
            subtitle: Text("This is sub ....") ,
            trailing: Icon(Icons.mic),
          );
  }
}
