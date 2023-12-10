import 'package:flutter/material.dart';
import 'package:mix_green_restaurant/models/item1.dart';
import 'package:mix_green_restaurant/widget/catogery.dart';

class Dessert extends StatefulWidget {
  const Dessert({super.key});

  @override
  State<Dessert> createState() => _DessertState();
}

class _DessertState extends State<Dessert> {
  final List<Item1>item=[
    Item1(image: "https://kitchen.sayidaty.net/uploads/small/21/21964d7571f03b823def43db1446de38_w361_h361.jpg",
        Text1: "pancake",
        Text2: "So irresistibly delicious",
      price: 35
    ),
    Item1(image: "https://img.youm7.com/xlarge/201708020528392839.jpg",
        Text1: "Molten cake",
        Text2: "So irresistibly delicious",
      price:45
    ),
    Item1(image: "https://media-cdn.tripadvisor.com/media/photo-s/21/8b/6f/59/caption.jpg",
        Text1: "donut",
        Text2: "So irresistibly delicious",
      price:40
    ),
    Item1(image: "https://www.foodtodayeg.com/Content/Upload/large/6202318154647240089861.jpg",
        Text1: "Molten cake",
        Text2: "So irresistibly delicious",
      price: 45
    ),
    Item1(image: "https://thebahrainlife.com/image.php?quality=90&width=1920&height=1080&image=files%2Fimages%2FItem%2Flotus_ice_cream_16611646994983990%20%281%29_c6zc0xoe.jpeg",
        Text1: "Bulla lotus",
        Text2: "So irresistibly delicious",
      price: 20
    ),
    Item1(image: "https://nefero.com/uploads/images/cb39e5506bcc795b3dd5bbf9c3d3a23a.jpeg",
      Text1: "Cheese lotus",
      Text2: "So irresistibly delicious",
      price: 40
    ),
    Item1(image: "https://magltk.com/wp-content/uploads/2019/12/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D9%83%D8%A8-%D9%83%D9%8A%D9%83-%D8%A8%D8%A7%D9%84%D8%B4%D9%88%D9%83%D9%88%D9%84%D8%A7%D8%AA%D8%A9-%D9%85%D8%B9-%D9%83%D8%B1%D9%8A%D9%85%D8%A9-%D8%A7%D9%84%D8%B2%D8%A8%D8%AF%D8%A9-%D8%A7%D9%84%D9%84%D8%B0%D9%8A%D8%B0%D8%A9.jpg",
        Text1: "cupcake",
        Text2: "So irresistibly delicious",
      price: 30
    ),
  Item1(
    image: "https://www.360moms.net/uploads/articles_body/1695674461098.6376157358_2546_ar.jpg",
        Text1: "Chocolate waffle",
        Text2: "So irresistibly delicious",
    price: 40
    ),
    Item1(image: "https://static.webteb.net/images/content/ramadanrecipe_recipe_690_2356deb3608-cbcb-4ddc-a1f5-329d777c8095.jpg",
        Text1: "Pampered lotus",
        Text2: "So irresistibly delicious",
      price: 50
    ),
    Item1(image: "https://static.aljamila.com/styles/1100x732/public/2022-04/4605041-1400153614.jpg?h=50844e28",
        Text1: "Kunafa",
        Text2: "So irresistibly delicious",
      price:50
    ),
    Item1(image: "https://mqall.org/wp-content/uploads/2021/01/%D9%83%D9%85-%D8%B9%D8%AF%D8%AF-%D8%A7%D9%84%D8%B3%D8%B9%D8%B1%D8%A7%D8%AA-%D8%A7%D9%84%D8%AD%D8%B1%D8%A7%D8%B1%D9%8A%D8%A9-%D9%81%D9%8A-%D8%A7%D9%84%D8%A8%D8%B3%D8%A8%D9%88%D8%B3%D8%A9-%D8%A8%D8%A3%D9%86%D9%88%D8%A7%D8%B9%D9%87%D8%A7%D8%9F.jpg",
        Text1: "Basbousa",
        Text2: "So irresistibly delicious",
      price: 45
    ),
    Item1(image: "https://alborsagia.news/media/2022/12/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D8%B3%D9%8A%D9%86%D8%A7%D8%A8%D9%88%D9%86-%D8%A8%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85%D8%A91.jpg",
        Text1: "Cinnabon",
        Text2: "So irresistibly delicious",
      price: 50
    ),
    Item1(image: "https://kitchen.sayidaty.net/uploads/small/bd/bdd58e7263b9b4e778de9d9442074832_w750_h750.JPG",
        Text1: "Kunafa with nuts",
        Text2: "So irresistibly delicious",
      price: 60
    ),
    Item1(image: "https://dsrtlab.com/media/catalog/product/n/u/nutella_brownie_1.jpg",
        Text1: "Browns cake",
        Text2: "So irresistibly delicious",
      price: 35
    ),
    Item1(image: "https://www.cairo24.com/Upload/libfiles/100/2/27.jpg",
        Text1: "OmAli",
        Text2: "So irresistibly delicious",
      price: 35
    ),
    Item1(image: "https://www.vetogate.com/Upload/libfiles/65/8/146.jpg",
        Text1: "Rice pudding",
        Text2: "So irresistibly delicious",
      price: 25
    ),
    Item1(image: "https://img-global.cpcdn.com/recipes/207240/400x400cq70/photo.jpg",
        Text1: "Creme caramel",
        Text2: "So irresistibly delicious",
      price: 20
    ),
    Item1(image: "https://adminhonna.elwatannews.com/uploads/image_archive/original_lower_quality/3465503901565115219.jpg",
        Text1: "Oreo madness",
        Text2: "So irresistibly delicious",
      price: 45
    ),
    Item1(image: "https://img-global.cpcdn.com/recipes/123181/1200x630cq70/photo.jpg",
        Text1: "Banana Split",
        Text2: "So irresistibly delicious",
      price: 30
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.green, size: 30),
          title: const Text(
            "Dessert",
            style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          actions:  const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.fastfood,
                color: Colors.green,
                size: 30,
              ),
            )
          ],
        ),
      body: ListView.builder(
      itemCount:item.length ,
      itemBuilder: (context, index) {
        return Catogery(item:item[index] );
      },
    ));


  }
}
