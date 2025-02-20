import 'dart:ui';
import 'package:final_project/models/cake_tile.dart';
import 'package:final_project/models/product.dart';
import 'package:final_project/pages/account.dart';
import 'package:final_project/pages/cart.dart';
import 'package:final_project/pages/custom_made.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 //  HomePage({super.key});
  
bool isSelected1 =true;

bool isSelected2 = false;

bool isSelected3 = false;

bool islist =false;
int list = 1;

void chosenType (int i){
  setState(() {
    if(i == 1){
       isSelected1 = true;
  isSelected2 = false;
  isSelected3 = false; 
  list=1;


    }
    if(i == 2){
       isSelected1 = false;
  isSelected2 = true;
  isSelected3 = false; 
  list=2;
  
    }
    if(i == 3){
       isSelected1 = false;
  isSelected2 = false;
  isSelected3 = true;
  list=3;
    }

  });
}
Widget listchosen (){


setState(() {
  
});
  return list == 1 ? ListView(
                      scrollDirection: Axis.horizontal,
                      children:[
                        CakeTile(name: "Gradiant Cake", image: "assets/images/BP1.jpg", price: 30.0),
                        CakeTile(name: "Graduation Cake", image: "assets/images/BP2.jpg", price: 35.0),
                        CakeTile(name: "Ruffles Cake", image: "assets/images/BP3.jpg", price: 35.0),
                        CakeTile(name: "Rasberry Cake", image: "assets/images/BP4.jpg", price: 25.0),
                        CakeTile(name: "Lavender Cake", image: "assets/images/BP5.jpg", price: 25.0),
                        CakeTile(name: "Lemon Cake", image: "assets/images/BP6.jpg", price: 35.0),
                        CakeTile(name: "Birthday Cake", image: "assets/images/BP7.jpg", price: 30.0),
                        ]) : list == 2? ListView(
                          scrollDirection: Axis.horizontal,

                           children:[   
                        CakeTile(name: "Mirror cake", image: "assets/images/Lunch4.jpg", price: 5.0),
                        CakeTile(name: "Loved one cake", image: "assets/images/Lunch5.jpg", price: 5.0),
                        CakeTile(name: "Sky cake", image: "assets/images/Lunch6.jpg", price: 5.0),
                        CakeTile(name: "Birthday set cake", image: "assets/images/Lunch7.jpg", price: 8.0),
                        CakeTile(name: "Animation customizable cake", image: "assets/images/Lunch8.jpg", price: 5.0),
                     
                        ]): ListView(
                        scrollDirection: Axis.horizontal,
                        
                          children: [
                        CakeTile(name: "Happy Birthday cake", image: "assets/images/ToGo1.jpg", price: 3.0),
                        CakeTile(name: "Special date cake", image: "assets/images/ToGo2.jpg", price: 3.0),
                        CakeTile(name: "Littel hearts cake", image: "assets/images/ToGo4.jpg", price: 3.0),
                        CakeTile(name: "3 cake set", image: "assets/images/ToGo5.jpg", price: 8.0),
                        CakeTile(name: "2 cake set", image: "assets/images/ToGo6.jpg", price: 3.0),
                          ],
                        ) 
                        ;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
       ),),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Meem's Cake", 
        style: GoogleFonts.libreBaskerville(
          color: Colors.white
         )
         ,),
         
      ),

    body: SafeArea(
      
      child: 
      Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 169, 189, 199)

                  ),
                  child: 
                    Row(
                    
                    children: [
                      Container(
                        
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/cook.PNG"),
                    ),
                    SizedBox(width: 15,),
                      Expanded(
                        child: Column(
                          children: [

                            SizedBox(height: 10,),
                          Text("What would you like to calebrate today?",
                            style: GoogleFonts.libreBaskerville(
                              color: Color.fromARGB(255, 78, 101, 119),
                              fontSize: 15
                            ),),
                            SizedBox(height: 10,),

                           Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.blueGrey
                                ),
                             child: MaterialButton(onPressed: (){
                              Navigator.push(
              context, MaterialPageRoute(
              builder: 
              (context) =>CustomMade()
              ));
                             }, 
                             child: Text("make your own Cake",
                             textAlign: TextAlign.center,
                               style: GoogleFonts.libreBaskerville(
                                fontWeight: FontWeight.bold,
                               color: Colors.white,
                               fontSize: 12,
                               backgroundColor: Colors.blueGrey )
                               ),
                             ),
                           )
                          ],
                        ),
                      ),
                    SizedBox(width: 15,)
                    ],
                ))),
    
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                    chosenType(1);
                    },
                    child: Text("Big Party", style: GoogleFonts.lobster(fontSize:  25, color: isSelected1? Colors.white: Color.fromARGB(255, 221, 218, 218)))),
                  GestureDetector(
                    onTap: (){
                    chosenType(2);

                    },
                    child: Text("Lunch Box", style: GoogleFonts.lobster(fontSize:  25, color:isSelected2? Colors.white: Color.fromARGB(255, 221, 218, 218
                    ))),
                  ),
                  GestureDetector(
                    onTap: (){
                    chosenType(3);

                    },
                    child: Text("To Go", style: GoogleFonts.lobster(fontSize:  25, color:isSelected3? Colors.white: Color.fromARGB(255, 221, 218, 218)))),
                ],
              ),
              //horizontal listview of coffee tiles
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                   Positioned(
                    top: 40,
                    left: 0,
                    right: 0,
                    bottom:0,
                     child: listchosen(),
                        
                   ),]
              )),
                   SizedBox(width:30),

                    Row(
                    children: [
                      SizedBox(width: 50),
                      Container(

                      child: Column(
                        children: [
                          CakeTile.finalTotal(),
                          SizedBox(height: 10,)

                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                      Expanded(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [


                           Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.blueGrey
                                ),
                             child: MaterialButton(onPressed: (){
                              Navigator.push(
              context, MaterialPageRoute(
              builder: 
              (context) =>CustomMade()
              ));
                             }, 
                             child: Text("Go to Cart", 
                             textAlign: TextAlign.center,
                               style: GoogleFonts.libreBaskerville(
                                fontWeight: FontWeight.bold,
                               color: Colors.white,
                               fontSize: 20,
                               backgroundColor: Colors.blueGrey )
                               ),
                             ),
                           ),
                           SizedBox(height: 10,)
                          ],
                        ),
                      ),
                      SizedBox(width: 50),
                    ],
                )
                    ,SizedBox(width: 30,)
              
              
              
              
              ]
              
              
              )

    )
  
     ) );
  }
}
