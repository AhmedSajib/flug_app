import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Column Page"),
            centerTitle: true,
            leading: Icon(Icons.add_a_photo),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.connect_without_contact))
            ],
          ),
          body: SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.book_online),
                  Icon(Icons.pending_actions),
                ],
              ),
            ),
          )),
    );
  }
}
