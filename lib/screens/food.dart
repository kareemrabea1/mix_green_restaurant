import 'package:flutter/material.dart';
import 'package:mix_green_restaurant/models/item1.dart';
import 'package:mix_green_restaurant/widget/catogery.dart';



class Food extends StatefulWidget {
   Food({super.key, });





  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  int counter=0;
  final List<Item1>item=[
    Item1(image: "https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg",
        Text1: " Chicken Fried...",
        Text2: "So irresistibly delicious",
      price:120

    ),
    Item1(image: "https://thebigmansworld.com/wp-content/uploads/2021/12/low-calorie-pasta-recipe.jpg",
        Text1: "Pasta italin",
        Text2: "True italin classic",
      price:56,
    ),
    Item1(image: "https://takrecipe.com/wp-content/uploads/2022/10/beef-steak-recipe.jpg",
        Text1: "Beef Steak",
        Text2: "delicious and popular steak",
      price: 135
    ),
    Item1(image: "https://images.deliveryhero.io/image/talabat/Menuitems/big_king_XL638094983313005128.jpg",
        Text1: "Beef burger...",
        Text2: "packet of fries and a drink",
      price: 120
    ),
    Item1(image: "https://images.deliveryhero.io/image/talabat/Menuitems/CRISPY_CHICKEN_MEAL__6375637890632467441370.jpg",
        Text1: "Chicken burger",
        Text2: "fries and a drink",
      price: 100
    ),
    Item1(image: "https://s3-eu-west-1.amazonaws.com/elmenusv5-stg/Normal/350e2b4b-80ff-4443-b7a9-16cd1a2b6103.jpg",
      Text1: "Steak burger...",
      Text2: "So irresistibly delicious",
      price: 90
    ),
    Item1(image: "https://images.deliveryhero.io/image/talabat/Menuitems/crispy_meal_2_637518432938340785.jpg",
        Text1: "strips",
        Text2: "Fries and coleslaw ",
      price: 125
    ),
    Item1(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkzL12Sy5bDV4FErjmSU7EUoEUdeoqBBiOQ&usqp=CAU",
        Text1: "Chicken shawarma",
        Text2: "Fries and tome",
      price: 80

    ),
    Item1(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzYeLs-XqInCgYLM7dGlzwVPlk9kAILNzDTNXSpQFQQ9g2YPo8yS_jMc-WZdFwYIfytGw&usqp=CAU",
        Text1: "Meat shawarma",
        Text2: "So irresistibly delicious",
      price:90
    ),
    Item1(image: "https://img.youm7.com/ArticleImgs/2016/12/17/66951-%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D8%A8%D9%8A%D8%AA%D8%B2%D8%A77.jpg",
        Text1: "Meat pizza...",
        Text2: "True italin classic",
      price: 90
    ),
    Item1(image: "https://img.lovepik.com/photo/50007/8084.jpg_wh860.jpg",
        Text1: "Chicken pizza...",
        Text2: "True italin classic",
      price:85
    ),
    Item1(image: "https://i.pinimg.com/originals/3f/21/b2/3f21b2ab782e68e0b1abb9ef85fb1087.png",
        Text1: "Zinger Supreme",
        Text2: "Fries and Drink",
      price:85
    ),
    Item1(image: "https://pbs.twimg.com/media/FUGLhUuWUAAYhkv.jpg",
        Text1: "Supreme",
        Text2: "So irresistibly delicious",
      price: 90
    ),
    Item1(image: "https://www.thaqfny.com/wp-content/uploads/2022/05/zinger.jpg",
        Text1: "Crispy zinger",
        Text2: "So irresistibly delicious",
      price:90
    ),
    Item1(image: "https://elakela.com/wp-content/uploads/2020/12/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%B2%D9%86%D8%AC%D8%B1-%D8%A7%D9%84%D8%AF%D8%AC%D8%A7%D8%AC2.jpg",
        Text1: "Zinger chicken",
        Text2: "So irresistibly delicious",
      price: 85
    ),
    Item1(image: "https://cdn-rdb.arla.com/kraft-ar/loaded-cheese-fries/3653556429.jpg?w=768&h=400&mode=crop&ak=617569bf&hm=694be998",
        Text1: "Cheese potatoes",
        Text2: "So irresistibly delicious",
      price:80
    ),
    Item1(image: "https://img.youm7.com/ArticleImgs/2022/4/20/376796-%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%B3%D9%86%D8%AF%D9%88%D8%AA%D8%B4%D8%A7%D8%AA-%D8%A7%D9%84%D8%A8%D8%B7%D8%A7%D8%B7%D8%B3.png",
        Text1: "Sry potatoes",
        Text2: "So irresistibly delicious",
      price: 25
    ),
    Item1(image: "https://nefero.com/demo4/media/posts/20230307051709.jpg",
        Text1: "Hawawshi",
        Text2: "So irresistibly delicious",
      price: 50
    ),
    Item1(image: "https://img.youm7.com/ArticleImgs/2018/7/5/180127-%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D9%83%D9%81%D8%AA%D8%A9-%D8%A7%D9%84%D9%84%D8%AD%D9%85%D8%A9-%D8%A7%D9%84%D9%85%D8%B4%D9%88%D9%8A%D8%A9-(1).jpg",
        Text1: "Meat kofta",
        Text2: "So irresistibly delicious",
      price: 90
    ),



  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.green, size: 30),
          title: const Text(
            "Food",
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
