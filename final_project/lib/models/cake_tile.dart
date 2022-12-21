//import 'package:final_project/models/cartmodel.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double totalx=0;
// Container finalTotal(){
//   return Container(
//                                padding: const EdgeInsets.only(left:20,right:200,top:20,bottom:20),
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.circular(10),
//                                  color: Colors.blueGrey
//                                   ),
//                                child: Text("Total = "+
//                                "${totalx}"+" KD"
//                                ,style: GoogleFonts.libreBaskerville(
//                                color: Colors.white,
//                                fontSize: 20)
//                                ),
//                              );
// }
class CakeTile extends StatefulWidget {
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
  State<CakeTile> createState() => _CakeTileState();

  static Container finalTotal() {
  
    return Container(
                               padding: const EdgeInsets.only(left:10,right:10,top:10,bottom:10),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.blueGrey
                                  ),
                               child: Text("Total = "+
                               "${totalx}"+" KD"
                               ,style: GoogleFonts.libreBaskerville(
                               color: Colors.white,
                               fontSize: 20)
                               ),
                             );
  }
}

class _CakeTileState extends State<CakeTile> {
   double sum=0;
 void  total (){
  setState(() {
  totalx=sum;
});
  print("sum= "+"${sum.toStringAsFixed(2)}");
    print("totalx= "+"${totalx.toStringAsFixed(2)}");
  //return sum.toStringAsFixed(2);
}
//  void totalPrice(){
// setState(() {
//   totalx=sum;
// });
//   ;
// }

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
                            child: Image.asset("${widget.image}",
                            //height: 100,width: 100,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("${widget.name}",
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
                              sum+=widget.price;
                              total();
                            }, 
                            child: Text("${widget.price}" + " KD", 
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
