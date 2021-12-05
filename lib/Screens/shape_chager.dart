import 'package:flug_app/Etsy/product_card.dart';
import 'package:flutter/material.dart';

class ShapeChange extends StatefulWidget {
  const ShapeChange({Key? key}) : super(key: key);

  @override
  State<ShapeChange> createState() => _ShapeChangeState();
}

class _ShapeChangeState extends State<ShapeChange> {
  bool isRectangle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    color: isRectangle ? Colors.green : Colors.orange,
                    shape: isRectangle ? BoxShape.rectangle : BoxShape.circle),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isRectangle = !isRectangle;
                    });
                  },
                  child: Text("Change shape"))
            ],
          )),
    );
  }
}
