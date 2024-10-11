import 'package:flutter/material.dart';
import 'package:shoes_store/Pages/CartPage.dart';
import 'package:shoes_store/Widgets/BoldText.dart';
import 'package:shoes_store/Widgets/LightText.dart';

class DetailViewPage extends StatefulWidget {
  DetailViewPage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.price});

  String imagePath;
  String title;
  double price;

  @override
  State<DetailViewPage> createState() => _DetailViewPageState();
}

class _DetailViewPageState extends State<DetailViewPage> {
  List<bool> isSelected = [true, false, false, false, false];
  List<bool> isSelected2 = [true, false, false, false, false];

  List<Color> Coloring = [
    Colors.yellow,
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.lightBlue
  ];

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.sizeOf(context).height;
    double Width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
            },
            child: Container(
              height: 50,
              width: 50,
              color: Colors.red.shade400,
              child: Icon(Icons.shopping_basket,color: Colors.white,),
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [


            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        // ############### back arrow container ################
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 20,
                          ),
                        ),
                      ),

                      // ############# heart icon ################
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: Height * 0.30,
                    width: double.maxFinite,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: BoldText(
                                text: "A I P",
                                size: 120,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            Center(
                              child: Container(
                                // color: Colors.blue,
                                margin: EdgeInsets.only(top: 0, right: 10),
                                height: 170,
                                width: 190,
                                child: Image.asset(
                                  widget.imagePath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Image.asset("assets/shoe_thumb_5.png"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Image.asset("assets/shoe_thumb_1.png"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Image.asset("assets/shoe_thumb_4.png"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Image.asset("assets/shoe_thumb_3.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 401,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 5,
                        width: 60,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        BoldText(
                          text: widget.title,
                          size: 25,
                        ),
                        Spacer(),
                        BoldText(
                          text: "\$ ",
                          size: 24,
                          color: Colors.red,
                        ),
                        BoldText(
                          text: widget.price.toString(),
                          size: 25,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 4 ? Icons.star : Icons.star_border,
                          // Icons.star,
                          size: 20,
                          color: index < 4 ? Colors.yellowAccent : Colors.grey,
                        );
                      }),
                    ),

// #################################################################################################
                    Row(
                      children: [
                        BoldText(
                          text: "Available Size",
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          int ss = index + 6;
                          return GestureDetector(
                            onTap: () {
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = false;
                              }
                              setState(() {
                                isSelected[index] = true;
                              });
                            },
                            child: Container(
                              child: Center(
                                child: BoldText(
                                  text: "US " + ss.toString(),
                                  size: 18,
                                  color: isSelected[index]
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                color: isSelected[index]
                                    ? Colors.red
                                    : Colors.white,
                                border: isSelected[index]
                                    ? Border.all(color: Colors.red)
                                    : Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          );
                        })),

// #################################################################################################

                    SizedBox(
                      height: 15,
                    ),

                    Row(
                      children: [
                        BoldText(
                          text: "Available Colors",
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(5, (index) {
                          return GestureDetector(
                              onTap: () {
                                for (int i = 0; i < isSelected2.length; i++) {
                                  isSelected2[i] = false;
                                }
                                setState(() {
                                  isSelected2[index] = true;
                                });
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Coloring[index].withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Positioned(
                                    left: 3,
                                    top: 7,
                                    child: Container(
                                      child: Center(
                                          child: isSelected2[index]
                                              ? Icon(
                                                  Icons.check,
                                                  size: 18,
                                                  color: Colors.white,
                                                )
                                              : ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Container(
                                                    height: 25,
                                                    width: 25,
                                                    color: Coloring[index],
                                                  ),
                                                )),
                                      margin:
                                          EdgeInsets.only(left: 5, right: 5),
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: isSelected2[index]
                                            ? Coloring[index]
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                        })
                    ),
                    SizedBox(height: 10,),

                    Row(
                      children: [
                        BoldText(text: "Description",size: 20,),
                      ],
                    ),
                    SizedBox(height: 2,),

                    Row(
                      children: [
                        LightText(
                          text: "No matter what kind of run you're on, there is energy with \n"
                              "everystride in the Nike Pegasus EasyOn. Energetic\n"
                              "cushioning from two Air Zoom units plus a flexible \n"
                              "tailgate for an easy step-in and step-out motion means\n"
                              "you can own a run, without the hassle.",size: 12,
                        )
                        // \n
                        //
                        //
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
