import 'package:flutter/material.dart';
import 'package:mix_green_restaurant/models/item1.dart';

class Catogery extends StatefulWidget {
  const Catogery({super.key, required this.item});
  final Item1 item;

  @override
  State<Catogery> createState() => _CatogeryState();
}

class _CatogeryState extends State<Catogery> {
  int counter = 0;
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      // Toggle the favorite state
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xfff3eeee),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image(
                      height: 150,
                      width: 120,
                      image: NetworkImage(widget.item.image),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: [
                          Text(
                            widget.item.Text1,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.item.Text2,
                            style: const TextStyle(
                                fontSize: 11, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        (counter == 0) ? (widget.item.price).toString() : (widget.item.price * counter).toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            //دى علشان تخلى القيمه تظهر علطول على الاسكرين
                            counter++;
                          });
                        },
                        icon: const Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green,
                        )),
                    Text(
                      "$counter",
                      style: const TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          if (counter > 0) {
                            setState(() {
                              counter--;
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.remove_circle_outline_outlined,
                          size: 20,
                          color: Colors.green,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: IconButton(
                          onPressed: toggleFavorite,
                          tooltip: 'Toggle Favorite',
                          icon: Icon(
                            Icons.favorite,
                            size: 28,
                            color: isFavorite ? Colors.green : Colors.white,
                            fill: 0,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20), // Adjust the height of SizedBox as needed
      ],
    );
  }
}
