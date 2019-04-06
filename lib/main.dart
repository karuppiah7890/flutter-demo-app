import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chennai',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GDG Chennai"),
      ),
      body: Center(
          child: Text(
        "Welcome to GDG Chennai!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("karuppiah7890@gmail.com"),
              accountName: Text("Karuppiah Natarajan"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/profile_images/734986876818317312/cdnwvJv1_400x400.jpg"),
              ),
            ),
            ListTile(
              title: Text("Option 1"),
              subtitle: Text("This is option 1"),
              leading: CircleAvatar(
                child: Text("1"),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("Option 2"),
              subtitle: Text("This is option 2"),
              leading: CircleAvatar(
                child: Text("2"),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("Option 3"),
              subtitle: Text("This is option 3"),
              leading: CircleAvatar(
                child: Text("3"),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
