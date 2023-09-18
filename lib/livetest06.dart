import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Livetesto6 extends StatefulWidget {
  const Livetesto6({super.key});

  @override
  State<Livetesto6> createState() => _Livetesto6State();
}

class _Livetesto6State extends State<Livetesto6> {
  final List<String> ShoppingList = [
    "Applee",
    "Mangoes",
    "Bananas",
    "Bread",
    "Milk",
    "Eggs",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 70,
            backgroundColor: Colors.green,
            title: const Text("My Shopping List" , style:
            TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),),
            centerTitle: true,
            actions: [
              Icon(Icons.card_travel_sharp , size: 24, color: Colors.white,)
            ],

          ),


          body: Container(
            height: double.infinity,
            child:  SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount:ShoppingList.length,
                      itemBuilder: (context, index) {
                        return  ListTile(
                          leading: Icon(Icons.shopping_bag_outlined , size: 32,),
                          title: Text(ShoppingList[index].toString(),style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12
                          ),),

                        );


                      }),

                ],
              ),
            ),

          )
      ),
    );
  }
}
