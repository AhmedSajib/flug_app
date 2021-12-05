import 'package:flug_app/Etsy/card.dart';
import 'package:flug_app/Etsy/product_card.dart';
import 'package:flug_app/Screens/calculator.dart';
import 'package:flug_app/Screens/column_page.dart';
import 'package:flug_app/Screens/news_paper_page.dart';
import 'package:flug_app/Screens/row_page.dart';
import 'package:flug_app/Screens/shape_chager.dart';
import 'package:flug_app/Screens/statefull_stateless.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.book,
                  ))
            ],
          ),
          body: Center(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ColumnPage()));
                          },
                          child: const Text('Column page')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const NewsPaper()));
                          },
                          child: const Text('Newspaper page')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const RowPage()));
                          },
                          child: const Text("Row Page")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const TestPage()),
                            );
                          },
                          child: const Text("Test Page")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const CardPage()),
                            );
                          },
                          child: const Text("Card Page")),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: ElevatedButton(
                    //       onPressed: () {
                    //         Navigator.of(context).push(
                    //           MaterialPageRoute(
                    //               builder: (context) => const ProductCard()),
                    //         );
                    //       },
                    //       child: const Text("Product Card")),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const CalculatorPage()),
                            );
                          },
                          child: const Text("Calculator")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const ShapeChange()),
                            );
                          },
                          child: const Text("Change Shape")),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
