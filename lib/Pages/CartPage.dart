import 'package:flutter/material.dart';
import 'package:shoes_store/Widgets/BoldText.dart';
import 'package:shoes_store/Widgets/LightText.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.red,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.grey,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.card_travel, color: Colors.grey,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.grey,),label: ""),
          ],
        ),
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            children: [
              //   Row for drawer and user image
              Row(
                children: [
                  Container(
                    child: Icon(Icons.menu),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/user.png"))),
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),

              //   Row for texts and delete icon
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LightText(
                        text: "Shopping",
                        size: 25,
                      ),
                      BoldText(
                        text: "Cart",
                        size: 24,
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),

              //   Container ==> List View.builder
              Container(
                height: 350,
                width: double.maxFinite,
                // color: Colors.teal,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        // margin: EdgeInsets.only(bottom: 10),
                        height: 90,
                        width: double.maxFinite,
                        // color: Colors.red,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //   Stack for image
                            Stack(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-25, -10),
                                  child: Container(
                                    height: 125,
                                    width: 125,
                                    child: Image.asset(
                                      "assets/small_tilt_shoe_1.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),

                            //   Column for texts
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                BoldText(text: "Nike Air Max 200",size: 20,),
                                Row(
                                  children: [
                                    BoldText(text: "\$ ",color: Colors.deepPurple,size: 20,),
                                    BoldText(text: "240.0",size: 20,)

                                  ],
                                )
                              ],
                            ),

                            Spacer(),
                            //   Container for quantity
                            ClipRRect(
                              borderRadius:BorderRadius.circular(10),
                              child: Container(
                                height: 40,
                                width: 40,
                                color: Colors.grey.withOpacity(0.5),
                                child: Center(
                                  child: BoldText(text: "x1",size: 18,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20,),

              Container(
                height: 2,
                width: double.maxFinite,
                color: Colors.grey.shade400,
              ),
              SizedBox(height: 20,),
            
            //   Row for total items and price
              Row(
                children: [
                  LightText(text: "4 items",color: Colors.grey,size: 18,),
                  Spacer(),
                  BoldText(text: "\$1320.0")
                ],
              ),
              SizedBox(height: 30,),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: (){
                  //   move to next page......................
                  },
                  child: Container(
                    height: 50,
                    width: 330,
                    color: Colors.orange,
                    child: Center(child: LightText(text: "Next"),),
                  ),
                ),
              )

              
            ],
          ),
        ),
      ),
    );
  }
}