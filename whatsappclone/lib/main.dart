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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Camera",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
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
        body: TabBarView(
          children: [
            buildCameraPage(),
            buildChatsPage(),
            buildStatusPage(),
            buildCallsPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Center buildCallsPage() => Center(child: Text("Calls"));

  Center buildStatusPage() => Center(child: Text("Status"));

  Center buildChatsPage() {
    return Center(
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
    );
  }

  ListTile _listItem() {
    return ListTile(
      dense: true,
      minLeadingWidth: 12.0,
      leading: CircleAvatar(
        child: Icon(Icons.ac_unit),
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
              "EVE: hey",
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

Widget buildCameraPage() {
  return Scaffold(
    body: Center(
        child: IconButton(
      icon: Icon(
        Icons.camera_alt,
        size: 80,
      ),
      onPressed: () {
        Scaffold(
          appBar: AppBar(
            title: Text('you tapped me'),
          ),
          // Complete this code in the next step.
        );
        final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
        BuildContext context;
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        print("Eve you Tapped Me");
      },
    )),
  );
}
