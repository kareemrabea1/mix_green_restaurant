import 'package:flutter/material.dart';
import 'package:mix_green_restaurant/screens/dessert.dart';
import 'package:mix_green_restaurant/screens/drink.dart';
import 'package:mix_green_restaurant/screens/food.dart';
import 'package:mix_green_restaurant/screens/loign_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.green,size: 30),
        title: const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text("MAX GREEN",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.fastfood,color: Colors.green,size: 30,),
          )
        ],
      ),
      drawer: Drawer(


        backgroundColor: const Color(0xff4B9F4E),
        elevation: 40, //بيهدى اللون شويه

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(

                    height:130 ,
                    width: 130,
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxWcHA80bu72d7tjzNaebqFoOgxcVtZOjdYQ&usqp=CAU"),
                  ),



                ],
              ),
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text('Home Page ', style: TextStyle(color: Colors.white)),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),);
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(
                    Icons.fastfood,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text('Food', style: TextStyle(color: Colors.white)),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Food()),);

              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(
                    Icons.rice_bowl_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Dessert',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Dessert()),);

              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(
                    Icons.local_drink_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text('Drink', style: TextStyle(color: Colors.white)),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Drink()),);

              },
            ),

            ListTile(
              title: const Row(
                children: [
                  Icon(
                    Icons.login,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text('login', style: TextStyle(color: Colors.white)),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginPage()),);


              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text('Close', style: TextStyle(color: Colors.white)),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0,right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order your food",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Healthy and nutritious food recipes",
                    style: TextStyle(color: Colors.grey,fontSize: 11,),
                  ),
                  Container(

                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: const Size(30, 30)),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Food()),);

                              });
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.fastfood,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Food",
                                  style: TextStyle(fontSize: 11, color: Colors.white),
                                ),
                              ],
                            )),
                        const SizedBox(width: 8,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: const Size(30, 30)),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  const Dessert()),);
                              });
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.rice_bowl_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "dessert",
                                  style: TextStyle(fontSize: 11, color: Colors.white),
                                ),
                              ],
                            )),
                        const SizedBox(width: 3,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: const Size(30, 30)),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  const Drink()),);

                              });
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.local_drink_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Drink",
                                  style: TextStyle(fontSize: 10, color: Colors.white),
                                ),
                              ],
                            )),

                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.start),
                      Text("Food ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,)),
                    ],
                  ),

                  SizedBox(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Chicken Fried",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://thebigmansworld.com/wp-content/uploads/2021/12/low-calorie-pasta-recipe.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Pasta italin",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("True italin classic",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://images.deliveryhero.io/image/talabat/Menuitems/big_king_XL638094983313005128.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Beef burger",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("packet of fries,drink ",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://images.deliveryhero.io/image/talabat/Menuitems/CRISPY_CHICKEN_MEAL__6375637890632467441370.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Chick burger",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("fries and a drink",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://s3-eu-west-1.amazonaws.com/elmenusv5-stg/Normal/350e2b4b-80ff-4443-b7a9-16cd1a2b6103.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Steak burger",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://images.deliveryhero.io/image/talabat/Menuitems/crispy_meal_2_637518432938340785.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("strips",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Fries and coleslaw",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkzL12Sy5bDV4FErjmSU7EUoEUdeoqBBiOQ&usqp=CAU"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("shawarma",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Fries and tome",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzYeLs-XqInCgYLM7dGlzwVPlk9kAILNzDTNXSpQFQQ9g2YPo8yS_jMc-WZdFwYIfytGw&usqp=CAU"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("M_shawarma",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://img.youm7.com/ArticleImgs/2016/12/17/66951-%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D8%A8%D9%8A%D8%AA%D8%B2%D8%A77.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Meat pizza",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("True italin classic",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://img.lovepik.com/photo/50007/8084.jpg_wh860.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Chicken pizza",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("True italin classic",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://i.pinimg.com/originals/3f/21/b2/3f21b2ab782e68e0b1abb9ef85fb1087.png"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Zin_Supreme",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Fries and Drink",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://pbs.twimg.com/media/FUGLhUuWUAAYhkv.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Supreme",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://takrecipe.com/wp-content/uploads/2022/10/beef-steak-recipe.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Beef Steak",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),



                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0,top: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.start),
                        Text("Dessert & Drink ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),


                  SizedBox(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://kitchen.sayidaty.net/uploads/small/21/21964d7571f03b823def43db1446de38_w361_h361.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("pancake",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://img.youm7.com/xlarge/201708020528392839.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Molten cake",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://media-cdn.tripadvisor.com/media/photo-s/21/8b/6f/59/caption.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("donut",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://kitchen.sayidaty.net/uploads/small/3b/3ba9f3e1ceeefa9c9901ccee26b81af3_w750_h500.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Oreo",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://shamlola.s3.amazonaws.com/Shamlola_Images/8/src/346284a21ee516019ad006221ed68023abe3bec2.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Ice coffee",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://m.gomhuriaonline.com/Upload/News/12-9-2022_13_44_40_GomhuriaOnline_251662983080.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Latte coffee",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://www.foodtodayeg.com/Content/Upload/large/6202318154647240089861.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Molten cake",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://thebahrainlife.com/image.php?quality=90&width=1920&height=1080&image=files%2Fimages%2FItem%2Flotus_ice_cream_16611646994983990%20%281%29_c6zc0xoe.jpeg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Bulla lotus",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://www.justfood.tv/nawa3emPics/4%20(1)-3-1-1-1.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("hotchocolate",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://alsaa.net/image/pic_145090.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("cappuccino",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://nefero.com/uploads/images/cb39e5506bcc795b3dd5bbf9c3d3a23a.jpeg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Cheese lotus",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:  const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://magltk.com/wp-content/uploads/2019/12/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D9%83%D8%A8-%D9%83%D9%8A%D9%83-%D8%A8%D8%A7%D9%84%D8%B4%D9%88%D9%83%D9%88%D9%84%D8%A7%D8%AA%D8%A9-%D9%85%D8%B9-%D9%83%D8%B1%D9%8A%D9%85%D8%A9-%D8%A7%D9%84%D8%B2%D8%A8%D8%AF%D8%A9-%D8%A7%D9%84%D9%84%D8%B0%D9%8A%D8%B0%D8%A9.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("cupcake",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width:  5,),
                        Container(
                          height: 230,
                          width: 150,


                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff3eeee),
                          ),
                          child:   const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(

                                    height: 100,
                                    width: 150,
                                    image: NetworkImage("https://www.elbalad.news/Upload/libfiles/949/1/453.jpg"),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Mocha",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("So delicious",style: TextStyle(fontSize: 11,color: Colors.grey),),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    children: [
                                      Text("200 Kcal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(width:  25,),
                                      Icon(Icons.favorite_outline_rounded),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),


                ],



              ),
            ),
          ]
      ),
    );
  }
}
