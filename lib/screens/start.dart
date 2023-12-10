import 'package:flutter/material.dart';
import 'package:mix_green_restaurant/screens/loign_page.dart';
import 'package:mix_green_restaurant/screens/sign_up.dart';


class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(child: Image.network(
               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxWcHA80bu72d7tjzNaebqFoOgxcVtZOjdYQ&usqp=CAU",
           height: 300,)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LoginPage()));
                },
                child: const Text(
                  'sign in.. ',
                  style: TextStyle(color: Colors.green,fontSize: 12),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  SignUpPage()));
                },
                child: const Text(
                  ' sign up?',
                  style: TextStyle(color: Colors.blue,fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
