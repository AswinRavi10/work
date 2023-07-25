import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Ui(),));
}
class Ui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer,color: Colors.black,),label: "Offers"),
        BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard,color: Colors.black,),label: 'Reward'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded,color: Colors.black,),label: "cart"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.black,),label: 'Profile',)
      ],),
      appBar: AppBar(title: Text("ZEDZAT",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black),),backgroundColor: Colors.white,),
      body:SafeArea (
        child:Column(
          children:[
            SizedBox(height: 25,width: 20,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Icon(Icons.location_on),
                Text("Govindapuram,Kozhikkode,Kerala,India")
              ],
            ),
          SizedBox(height: 20,),
          Container(
            child: CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin:
                  EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius
                        .circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/k.jpeg"),

                      fit: BoxFit.cover,
                    ),
                  ),
                ),


                //2nd Image of Slider
                Container(
                  margin:
                  EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius
                        .circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/k.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),


                //3rd Image of Slider
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve:
                Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration:
                Duration(
                    milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

    ),
            SizedBox(height: 30,),
            Container(
              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white
                    ),
                    child: Center(child: Text("Product")),
                    height: 20,width: 100,
                  ),
                  SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black
                    ),
                    child: Center(child: Text("Service",style: TextStyle(color: Colors.white),)),
                    height: 20,width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
             child:Column(
               children:[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [Column(
                 children:[
                 CircleAvatar(
                   backgroundColor: Colors.grey,
                   backgroundImage: AssetImage("assets/mo.jpg"),
                   radius:30,
                 ),
                   SizedBox(height: 10,),
                   Text('Finance')
                 ]
                 ),
                 Column(
                     children:[
                       CircleAvatar(
                         backgroundColor: Colors.grey,
                         backgroundImage: AssetImage("assets/ed.jpg"),
                         radius:30,
                       ),
                       SizedBox(height: 10,),
                       Text('Education')
                     ]
                 ),
                 Column(
                     children:[
                       CircleAvatar(
                         backgroundColor: Colors.grey,
                         backgroundImage: AssetImage("assets/insu.jpg"),
                         radius:30,
                       ),
                       SizedBox(height: 10,),
                       Text('Insurance')
                     ]
                 ),
                 Column(
                     children:[
                       CircleAvatar(
                         backgroundColor: Colors.grey,
                         backgroundImage: AssetImage("assets/doc.jpg"),
                         radius:30,
                       ),
                       SizedBox(height: 10,),
                       Text('Doctors')
                     ]
                 )
               ],
             ),
             SizedBox(height: 20,),
             Container(
               child: Column(
                 children: [Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       children: [
                         CircleAvatar(
                           backgroundImage: AssetImage("assets/saloon.jpg"),
                           radius: 30,
                         ),
                         SizedBox(height: 10,),
                         Text('Beauty Saloon')
                       ],

                     ),
                     Column(
                       children: [
                         CircleAvatar(
                           backgroundImage: AssetImage("assets/leagal.png"),
                           radius: 30,
                         ),
                         SizedBox(height: 10,),
                         Text('Leagal')
                       ],

                     ),
                     Column(
                       children: [
                         CircleAvatar(
                           backgroundImage: AssetImage("assets/mech.png"),
                           radius: 30,
                         ),
                         SizedBox(height: 10,),
                         Text('Mechanics')
                       ],

                     ),
                     Column(
                       children: [
                         CircleAvatar(
                           backgroundImage: AssetImage("assets/ele.png"),
                           radius: 30,
                         ),
                         SizedBox(height: 10,),
                         Text('Electritian')
                       ],

                     )
                   ],
                 )],
               ),
             )
              ]
            )
            ),

    ]
    )
    )
    );
  }

}