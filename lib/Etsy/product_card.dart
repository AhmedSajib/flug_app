import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.etsystatic.com/19311499/r/il/b4be61/1839533908/il_794xN.1839533908_lgk6.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Text(
                  "Personalized leather Wallet",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Text(
                  " (20,540)",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "USD 20",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                "  USD38.5",
                style: TextStyle(
                  fontSize: 17,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                " (48% off)",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.lightGreen.shade600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
