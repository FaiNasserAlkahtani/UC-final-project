import 'package:final_project/pages/cart.dart';
import 'package:final_project/pages/custom_made.dart';
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
              (context) =>CustomMade() 
              ));
              }, 
              icon: Icon(Icons.cake_outlined)),

              //shopping cart icon 
              IconButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
              builder: 
              (context) =>Cart() 
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
      ,body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Feild 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Ful Name:", 
              style: GoogleFonts.libreBaskerville(
            color: Colors.white, fontSize: 20

               )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.border_color_outlined),
                //hintText: "Happy Birthday, Love you ....",
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))
                )
              )
              
            ),
          ),
          //Field 1 end 

          //Feild 2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Enter your phone number:", 
              style: GoogleFonts.libreBaskerville(
            color: Colors.white, fontSize: 20

               )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                //hintText: "hearts, little flowers, cartoon ....",
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))
                )
              )
              
            ),
          ),
          //Field 2 end 

          //Feild 3
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Enter your address", 
              style: GoogleFonts.libreBaskerville(
            color: Colors.white, fontSize: 20

               )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on),
                //hintText: "baby pink, baby blue, offwhite ....",
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))
                )
              )
              
            ),
          ),
          //Field 3 end 
          //Feild 4
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Enter your email", 
              style: GoogleFonts.libreBaskerville(
            color: Colors.white, fontSize: 20

               )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                //hintText: "Strawberry, Rasberry, Chocolate, Vanilla ....",
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))
                )
              )
              
            ),
          ),
          //Field 4 end
          //Feild 3
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Enter a back up phone number", 
              style: GoogleFonts.libreBaskerville(
            color: Colors.white, fontSize: 20

               )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                //hintText: "baby pink, baby blue, offwhite ....",
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))
                )
              )
              
            ),
          ),
          //Field 3 end  
        ],
      ),//End Buttom Navegation bar
    );
  }
}