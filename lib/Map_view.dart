import 'package:flutter/material.dart';

class map_view extends StatefulWidget {
  const map_view({Key? key}) : super(key: key);

  @override
  State<map_view> createState() => _map_viewState();
}

class _map_viewState extends State<map_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
      ),

      // appBarMain(context),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}/* Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.white,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.black,

              /*   child: Drawer(
                child: Row(
                  children: [],
                ),
              ), */
            ),
          ],
        ),
      ),
      //drawer: Drawer(),
    );
  }
}
 */