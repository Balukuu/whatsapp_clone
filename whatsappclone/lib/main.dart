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
      dense: true,
      minLeadingWidth: 12.0,
      leading: CircleAvatar(
        child: Text("AW"),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
            title: Text(
              "This is a new group from",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            trailing: Text(
              "6.27 PM",
              style: TextStyle(
                color: Colors.greenAccent,
              ),
            ),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "etwin: Did you get that hdhshhssh",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Icon(Icons.mic),
                SizedBox(width: 5.0),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "23",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
