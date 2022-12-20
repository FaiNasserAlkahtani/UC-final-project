class Cake{
  String name;
  String image;
  double price;

 Cake({required this.name, 
  required this.image, 
  required this.price});

  static List<Cake> cakes = [
    Cake(name: "Love", image: "", price: 6.0),
    Cake(name: "Kuwat National Day", image: "", price: 15.0),
    Cake(name: "HBD", image: "", price: 5.0),

  ];



  

  // static List<Cake> cakes_List = [
  //   Cake(name: "Feb", image: "assets/images/feb.jpg", price: 6.5),
  //   Cake(name: "Love", image: "assets/images/love_u.jpg", price: 7),
  //   Cake(name: "HBD", image: "assets/images/hbd_blue.jpg", price: 6.0),

  // ];


  //big party cake list
static List<Cake> bpList= [
  Cake(name: "", image: "assets/images/BP1.jpg", price: 30.0),
  Cake(name: "", image: "assets/images/BP2.jpg", price: 35.0),
  Cake(name: "", image: "assets/images/BP3.jpg", price: 35.0),
  Cake(name: "", image: "assets/images/BP4.jpg", price: 25.0),
  Cake(name: "", image: "assets/images/BP5.jpg", price: 25.0),
  Cake(name: "", image: "assets/images/BP6.jpg", price: 35.0),
  Cake(name: "", image: "assets/images/BP7.jpg", price: 30.0),


];


  //lunch box cake list 
static List<Cake> lunchBoxList= [
  Cake(name: "", image: "assets/images/Lunch2.jpg", price: 5.0),
  Cake(name: "", image: "assets/images/Lunch3.jpg", price: 5.0),
  Cake(name: "", image: "assets/images/Lunch4.jpg", price: 5.0),
  Cake(name: "", image: "assets/images/Lunch5.jpg", price: 5.0),
  Cake(name: "", image: "assets/images/Lunch6.jpg", price: 5.0),
  Cake(name: "", image: "assets/images/Lunch7.jpg", price: 5.0),
  Cake(name: "", image: "assets/images/Lunch8.jpg", price: 5.0),
];


  //to go cake list

  static List<Cake> toGoList= [
    Cake(name: "", image: "assets/images/ToGo1.jpg", price: 3.0),
  Cake(name: "", image: "assets/images/ToGo1.jpg", price: 3.0),
  Cake(name: "", image: "assets/images/ToGo1.jpg", price: 3.0),
  Cake(name: "", image: "assets/images/ToGo1.jpg", price: 3.0),
  Cake(name: "", image: "assets/images/ToGo1.jpg", price: 3.0),
  Cake(name: "", image: "assets/images/ToGo1.jpg", price: 3.0),
  Cake(name: "", image: "assets/images/ToGo1.jpg", price: 3.0),
  ];
}