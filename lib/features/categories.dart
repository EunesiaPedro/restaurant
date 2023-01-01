import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
       children: [
         Row(
           children: [
             Text(
                 "Hamburger with egg",
               style: TextStyle(
                 fontSize: 17,
                 fontWeight: FontWeight.bold
               ),
             ),
            Image.asset(
                "assets/humb.png",
              width: 200,
              height: 100,
            )
             
           ],
           
         ),
         Row(
           children: [
             Text(
                 "Meat with vegetables",
               style: TextStyle(
                 fontSize: 17,
                 fontWeight:FontWeight.bold
               ),

             ),
            Image.asset(
                "assets/pic4.png",
              width: 190,
              height: 100,
            )
           ],
         ),
         Row(
           children: [
             Text(
               "Rice with fish and veges",
               style: TextStyle(
                   fontSize: 17,
                   fontWeight:FontWeight.bold
               ),

             ),
             Image.asset(
               "assets/pic6.png",
               width: 150,
               height: 100,
             )
           ],
         ),
         Row(
           children: [
             Text(
               "Rice with beans",
               style: TextStyle(
                   fontSize: 17,
                   fontWeight:FontWeight.bold
               ),

             ),
             Image.asset(
               "assets/prato8.png",
               width: 190,
               height: 100,
             )
           ],
         ),

         
       ],

     ),

    );

  }
}
