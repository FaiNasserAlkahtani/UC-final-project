import 'package:final_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:final_project/models/cake_tile.dart';
import 'package:final_project/models/product.dart';
import 'package:final_project/pages/account.dart';
//import 'package:final_project/pages/cart.dart';
//import 'package:final_project/pages/all_cake.dart';
import 'package:google_fonts/google_fonts.dart';
class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account",
      style: GoogleFonts.libreBaskerville(
          color: Colors.white)
      )),
      //Buttom Navegation bar
      bottomNavigationBar: BottomAppBar(notchMargin: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //home icon 
          IconButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
              builder: 
              (context) =>HomePage() 
              ));
              }, 
              icon: Icon(Icons.home)),
              

              //cake icon 
          IconButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
              builder: 
              (context) =>HomePage() 
              ));
              }, 
              icon: Icon(Icons.cake_outlined)),

              //shopping cart icon 
              IconButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
              builder: 
              (context) =>HomePage() 
              ));
              }, 
              icon: Icon(Icons.shopping_cart)),


              //person 
              IconButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
              builder: 
              (context) =>Account() 
              ));
              }, 
              icon: Icon(Icons.person)),

        ],
      )

    )
      //End Buttom Navegation bar
    );
  }
}