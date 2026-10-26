
import 'package:flutter/material.dart';

class Details extends StatefulWidget
{
  // ignore: strict_top_level_inference, prefer_typing_uninitialized_variables
  final Map data ;
  const Details({super.key, this.data});

  @override
  State<Details> createState() => Details_State() ;
  
}

// ignore: camel_case_types
class Details_State extends State<Details>
{

  int counter = 1 ;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
              clipBehavior: Clip.none,
              children: [
              Container(
              width: double.infinity ,
              height: 350,
              decoration: BoxDecoration(
                color:Color.fromRGBO(162, 12, 22, 1),
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(170),
                  bottomRight: Radius.circular(170),
              )
              ),

              child: Column(
                children: [
                  const SizedBox(height: 60) ,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                        MaterialButton(
                            height: 50,
                            color: Colors.white,
                            shape: CircleBorder(),
                            onPressed: () {
                              Navigator.of(context).pop() ;
                            },
                          child: Icon(Icons.arrow_back_ios_new,size: 20),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: IconButton(
                            onPressed: () {
                              
                            }, 
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 25,
                              )
                            ),

                          )

                    ],
                  ),

                ],
              ),

            ),
              Positioned(
                  bottom: -40,
                  left: 0,
                  right: 0, 

                  child: Center(
                  child: Image.asset(
                  widget.data["Image"],
                  width: 250,
                  height: 200,
                  fit: BoxFit.cover,
                  )
                  ),
                  )

              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.data["title"],
                        style: TextStyle(
                          fontSize: 25 ,
                          fontWeight: FontWeight.bold ,
                        ),
                      ),

                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          const Text(
                            "Rs.",
                            style: TextStyle(
                              color:Color.fromRGBO(162, 12, 22, 1),
                              fontSize: 25 ,
                              fontWeight: FontWeight.bold ,
                            ),
                          ),

                          Text(
                            widget.data["Price"],
                            style: TextStyle(
                              color:Color.fromRGBO(162, 12, 22, 1),
                              fontSize: 25 ,
                              fontWeight: FontWeight.bold ,
                            ),
                          )

                        ],
                      ),
                      )
                    ],
                  ),

                  const SizedBox(height: 5),
                  Text(
                    widget.data["Subtitle"],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    
                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 60,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color:Color.fromRGBO(162, 12, 22, 1),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Text(
                            "Details",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20 ,
                              fontWeight: FontWeight.bold,
                            ),
                            ),

                        ),

                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 60,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Text(
                            "Reviews",
                            style: TextStyle(
                              fontSize: 20 ,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                        )

                      ],

                    ),

                    const SizedBox(height: 15),

                    Text(
                      widget.data["Description"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Container(
                          width: 205,
                          height: 75,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            children: [

                              MaterialButton(
                                  minWidth: 60,
                                  height: 60,
                                  color: Color.fromRGBO(162, 12, 22, 1),
                                  shape: CircleBorder(),
                                    onPressed: () {
                                      
                                        if(counter>1)
                                        {
                                          counter--;
                                          setState(() {
                                            
                                          });
                                        }
                                        
                                    },
                                    child: Icon(Icons.remove,color: Colors.white),
                                  ),
                                

                                const SizedBox(width: 20),

                                Text(
                                  "$counter",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),

                                const SizedBox(width: 20),

                                MaterialButton(
                                  minWidth: 60,
                                  height: 60,
                                  color: Color.fromRGBO(162, 12, 22, 1),
                                  shape: CircleBorder(),
                                    onPressed: () {
                                      counter++ ;
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Icon(Icons.add,color: Colors.white),
                                  ),

                            ],
                          ),
                        ),

                        const SizedBox(width: 7),
                        
                          Expanded(
                            child: MaterialButton(
                            height: 70,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                            ),
                            color:Color.fromRGBO(162, 12, 22, 1),
                              onPressed: () {
                                
                              },
                            child: Text(
                                "Add to cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                ),
                            ),
                            )
                      ],
                    )

                  ],
              ),
              )


          ],
        ),


    );

  }
  
}