import 'package:flutter/material.dart';
import 'package:mix_green_restaurant/models/item1.dart';
import 'package:mix_green_restaurant/widget/catogery.dart';

class Drink extends StatefulWidget {
  const Drink({super.key});

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  final List<Item1>item=[
    Item1(image: "https://shamlola.s3.amazonaws.com/Shamlola_Images/8/src/346284a21ee516019ad006221ed68023abe3bec2.jpg",
        Text1: "Ice coffee",
        Text2: "So irresistibly delicious",
      price: 50
    ),
    Item1(image: "https://m.gomhuriaonline.com/Upload/News/12-9-2022_13_44_40_GomhuriaOnline_251662983080.jpg",
        Text1: "Latte coffee",
        Text2: "So irresistibly delicious",
      price:40
    ),
    Item1(image: "https://kitchen.sayidaty.net/uploads/small/3b/3ba9f3e1ceeefa9c9901ccee26b81af3_w750_h500.jpg",
        Text1: "Oreo",
        Text2: "So irresistibly delicious",
      price: 45
    ),
    Item1(image: "https://www.justfood.tv/nawa3emPics/4%20(1)-3-1-1-1.jpg",
        Text1: "hotchocolate",
        Text2: "So irresistibly delicious",
      price:47
    ),
    Item1(image: "https://alsaa.net/image/pic_145090.jpg",
        Text1: "cappuccino",
        Text2: "So irresistibly delicious",
      price: 45
    ),
    Item1(image: "https://www.elbalad.news/Upload/libfiles/949/1/453.jpg",
      Text1: "Mocha",
      Text2: "So irresistibly delicious",
      price: 35
    ),
    Item1(image: "https://blogger.googleusercontent.com/img/a/AVvXsEiRntAOxy-8hZWw3T7XLVk-Kzvg3PTBTF5dyhMzWWz--ErNgCMV37MO82mrdsvXLgQktDtzFIX2lFjhkIiP-TjVX58ssGDerjnH0VfHfv_hYA-IJwYCNssZGYMIggQj2EsOjUirOaI2Hssn1uYDnr2lRJW4I-XwZesgK7BQSdVYxfHDpisQBwT23VuOCw=w1200-h630-p-k-no-nu",
        Text1: "coffee",
        Text2: "So irresistibly delicious",
      price: 40

    ),
    Item1(
        image: "https://images.skynewsarabia.com/images/v1/2019/10/19/1291708/800/450/1-1291708.jpg",
        Text1: "Tea",
        Text2: "So irresistibly delicious",
      price: 30
    ),
    Item1(image: "https://media.gemini.media/img/large/2021/5/31/2021_5_31_17_15_6_805.jpg",
        Text1: "mango",
        Text2: "So irresistibly delicious",
      price:40
    ),
    Item1(image: "https://media.gemini.media/img/large/2021/7/6/2021_7_6_2_9_50_937.jpg",
        Text1: "orange",
        Text2: "So irresistibly delicious",
      price: 40
    ),
    Item1(image: "https://kms.sohati.com/Images/998x749xo/190522110930237~%D8%B9%D8%B5%D9%8A%D8%B1-%D8%A7%D9%84%D9%84%D9%8A%D9%85%D9%88%D9%86-%D8%A8%D8%A7%D9%84%D9%86%D8%B9%D9%86%D8%A7%D8%B9.jpg",
        Text1: "Lemon with mint",
        Text2: "So irresistibly delicious",
      price: 40
    ),
    Item1(image: "https://img-global.cpcdn.com/recipes/d9b7a83af8735889/400x400cq70/photo.jpg",
        Text1: "Guava",
        Text2: "So irresistibly delicious",
      price:40
    ),
    Item1(image: "https://www.almrsal.com/wp-content/uploads/2018/01/Oreo-Milkshake-683x1024.jpg",
        Text1: "Oreo milkshake",
        Text2: "So irresistibly delicious",
      price: 50
    ),
    Item1(image: "https://mandarinqatar.com/images/milk-shake/KITKATE-MILK-SHAKE.jpg",
        Text1: "Kitkat milkshake",
        Text2: "So irresistibly delicious",
      price: 60
    ),
    Item1(image: "https://img.youm7.com/ArticleImgs/2018/12/4/27771-%D8%A7%D9%84%D9%82%D8%B1%D9%81%D8%A9-%D8%A8%D8%A7%D9%84%D9%84%D8%A8%D9%86.jpg",
        Text1: "Cinnamon with milk",
        Text2: "So irresistibly delicious",
      price: 40
    ),
    Item1(image: "https://yummy.awicdn.com/site-images/sites/default/files/prod/recipe/b/f/510510/a6b21ca2745fb8d6ea9f4e11ee5bd11f84d145fe-021022062511.jpg?preset=v3.0_1200xDYN&save-png=1&rnd=1519151RND220215",
        Text1: "Sahlab with nuts",
        Text2: "So irresistibly delicious",
      price: 50
    ),
    Item1(image: "https://static.webteb.net/images/content/tbl_articles_article_18781_29cf234465-bced-48eb-be88-c5330b506b3f.jpg",
        Text1: "pomegranate",
        Text2: "So irresistibly delicious",
      price: 40
    ),
    Item1(image: "https://www.masrtimes.com/UploadCache/libfiles/27/9/600x338o/320.jpg",
        Text1: "Banana with milk",
        Text2: "So irresistibly delicious",
      price: 50
    ),
    Item1(image: "https://e7.pngegg.com/pngimages/259/745/png-clipart-mineral-water-bottled-water-carbonated-water-bottle-glass-plastic-bottle.png",
        Text1: "Mineral water",
        Text2: "-------------",
      price: 10

    ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        iconTheme: const IconThemeData(color: Colors.green, size: 30),
        title: const Text(
          "Drink",
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
        body:
        ListView.builder(
          itemCount:item.length ,
          itemBuilder: (context, index) {
            return Catogery(item:item[index] );
          },
        ));

  }
}
