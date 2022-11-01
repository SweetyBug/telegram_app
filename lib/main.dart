import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram App',
      home: MyHomePage(),
    );
  }
}

final List<String> users = ["Tom", "Bob", "Sam", "Mike"];
final List<IconData> icons = [
  Icons.face,
  Icons.tag_faces,
  Icons.work,
  Icons.book
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          color: Colors.white,
          iconSize: 20,
          icon: Text(
            'Edit',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {},
        ),
        title: Text('Chats'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            iconSize: 20,
            icon: const Icon(Icons.crop_din),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: users.length,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(users[index], style: TextStyle(fontSize: 22, color: Colors.white)),
                leading: Icon(icons[index], color: Colors.white,),
              );
            }),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.black87,
        child: Row(
          children: <Widget>[
            IconButton(
              color: Colors.white,
              iconSize: 35,
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
            SizedBox(width: 125),
            IconButton(
              color: Colors.white,
              iconSize: 35,
              icon: Icon(Icons.sms),
              onPressed: () {},
            ),
            SizedBox(width: 125),
            IconButton(
              color: Colors.white,
              iconSize: 35,
              icon: Icon(Icons.brightness_5_rounded),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
