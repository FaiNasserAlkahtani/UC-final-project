//import 'package:final_project/models/cartmodel.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CakeTile extends StatelessWidget {
  String name;
  String image;
  double price;
 CakeTile({required this.image, 
 required this.name, 
 required this.price,
 });
 //CakeTile cake = new CakeTile(name: "Gradiant Cake", image: "assets/images/BP1.jpg", price: 30.0);

// CakeTile cake = new CakeTile(CakeTile.image , 
// name, price: price);
  @override
  Widget build(BuildContext context) {
    
    return Padding(
                    padding: const EdgeInsets.only(left: 25.0,
                    bottom: 25),
                    child: Container(
                    padding:EdgeInsets.all(14),
                    width: 200,
                    height: 200,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueGrey,
                      //color: Color.fromARGB(172, 19, 51, 96),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("${image}",
                            //height: 100,width: 100,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("${name}",
                              //Libre Baskerville
                              style: GoogleFonts.libreBaskerville(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("click here for more customization",
                              style: TextStyle(
                                color: Colors.grey[300],

                              ),),
                            ),
                            MaterialButton(onPressed: (){
                              //CartModel.add(price);
                              //CartModel.addCake(cake);
                            }, 
                            child: Text("$price" + " KD", 
                            style: TextStyle(
                              color: Colors.white,),) ,
                            color: Color.fromARGB(255, 79, 113, 134),
                            )
                        
                        ],
                      ),
               
                
                
                ),
                  );



  }
}
