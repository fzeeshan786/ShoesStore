import 'package:flutter/material.dart';
import 'package:shoes_store/Pages/DetailViewPage.dart';
import 'package:shoes_store/Widgets/BoldText.dart';
import 'package:shoes_store/Widgets/LightText.dart';
import '../Models/Shoe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.red,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.grey,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.card_travel, color: Colors.grey,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.grey,),label: ""),
          ],
        ),
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // first container
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      child: Opacity(
                        opacity: 0.7,
                        child: Image.asset("assets/1.jpg")),

                    ),
                  ),
                  // Spacer(),

                  // second container
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/user.png"))

                      ),

                    ),
                  )

                ],
              ),

              SizedBox(height: 15,),
              LightText(text: "Our",size: 30,),
              BoldText(text: "Products",size: 30,),

              SizedBox(height: 15,),

              Row(
                children: [
                  // Container
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 50,
                      width: 270,
                      color: Colors.grey.shade300,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          children: [
                            // search icon
                            Icon(Icons.search),

                            SizedBox(width: 10,),

                            // textformfield
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label: LightText(
                                    text: "Search Products",
                                    size: 15,),
                                    border: InputBorder.none),


                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  // icon
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)

                      ),
                      child: Opacity(
                        opacity: 0.7,
                        child: Image(
                          image: AssetImage("assets/1.jpg")))
                    ),
                  ),


                ],
              ),

              SizedBox(height: 20,),

              // ########### horizontal listview for shoes jacket watch ###########
              Container(
                    height: 50,
                    width: double.maxFinite,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        // first category
                        Container(
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange,
                              width: 3,),
                            borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              //  product image
                              Container(
                                height: 60,
                                width: 60,
                                child: Image(image: AssetImage("assets/shoe_thumb_2.png"))
                              ),

                              // product category
                              BoldText(text: "Sneakers",size: 20,),
                            ],
                          ),
                        ),

                        SizedBox(width: 15,),

                        // second category
                        Container(
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange,
                              width: 3 ),
                              borderRadius: BorderRadius.circular(15),),
                          child: Row(
                            children: [
                                //  product image
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/jacket.png"),
                              ),

                              // product category
                              BoldText(text: "Jacket",size: 20,)
                            ],
                          ),


                        ),

                        SizedBox(width: 15,),

                        Container(
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange,
                              width: 3 ),
                              borderRadius: BorderRadius.circular(15),),
                          child: Row(
                            children: [
                                //  product image
                               Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/watch.png"),
                              ),

                              // product category
                              BoldText(text: "Watch",size: 20,)
                            ],
                          ),
                        ),

                      ],
                    ),

                  ),

              SizedBox(height: 20,),

              Container(
                          height: 280,
                          width: double.maxFinite,
                          // color: Colors.red,
                          child: ListView.builder(
                            // itemCount: 3,
                            itemCount: Shoes.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailViewPage(imagePath: Shoes[index].imagePath, title: Shoes[index].title, price: Shoes[index].price)));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  height: 280,
                                  width: 200,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.translate(offset: Offset(-65, 10),
                                      child: Icon(
                                        Icons.favorite_outline,
                                        color: Colors.grey,
                                        size: 30,),),

                                      Stack(
                                        children: [
                                          Center(
                                            child: Container(
                                            margin: EdgeInsets.only(top: 30),
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.3),
                                            borderRadius: BorderRadius.circular(60)
                                            ),
                                           ),
                                          ),
                                          // Image.asset("assets/shooe_tilt_1.png"),
                                          Image.asset(Shoes[index].imagePath),
                                        ],
                                      ),

                                      BoldText(text: Shoes[index].title,size: 20,),
                                      BoldText(text: Shoes[index].isTrending ? "Trending Now":"Not Trending",size: 15,color: Colors.red,),
                                      BoldText(text: Shoes[index].price.toString(),size: 20,),

                                    ],
                                  ),

                                ),
                              );
                            },
                          ),
                        ),

            ],
          ),
        )
      ),
    );
  }
}