import 'package:flutter/material.dart';
class AutomaticImplyLead extends StatefulWidget {
  const AutomaticImplyLead({Key? key}) : super(key: key);
  @override
  State<AutomaticImplyLead> createState() => _AutomaticImplyLead();
}

class _AutomaticImplyLead extends State<AutomaticImplyLead> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Appbar Title"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              icon: Icon(Icons.ac_unit)),
          IconButton(
              onPressed: () {
                setState(() {
                  count = count - 1;
                });
              },
              icon: Icon(Icons.delete)),
          IconButton(onPressed: () {}, icon: Icon(Icons.accessibility)),
          PopupMenuButton(
              icon: Icon(Icons.menu),
              itemBuilder: (context) => [
                    PopupMenuItem(value: 1, child: Text("Facebook")),
                    PopupMenuItem(value: 2, child: Text("Instagram")),
                    PopupMenuItem(value: 3, child: Text("Twiter")),
                  ]),
        ],
        automaticallyImplyLeading: true,
      ),
      body: Center(child: Text("$count", style: TextStyle(fontSize: 59.0))),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Center(
                  child:
                      Text("My Drawer", style: TextStyle(color: Colors.white))),
            ),
            ListTile(title: Text("Galery")),
            ListTile(title: Text("Slideshow")),
            ListTile(title: Text("Setting")),
            ListTile(title: Text("Contact")),
          ],
        ),
      ),
    );
  }
}
