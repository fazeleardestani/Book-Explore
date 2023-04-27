import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {

  runApp(MyApp());

}

// ignore: use_key_in_widget_constructors

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 24),
            child: Image.asset('assets/images/heroicons-solid_menu-alt-2.png' , height: 24 , width: 24),
          ),
        
          title: searchfield(),
          actions: [

            SizedBox(width: 17.0,),
            Image.asset('assets/images/fluent_scan-dash-28-filled.png' , height: 24 , width: 24),
            SizedBox(width: 17.0,),
            Padding(padding: EdgeInsets.only(right: 24) ,
             child:Image.asset('assets/images/mdi_bell-notification.png' , height: 24 , width: 24), ),
            SizedBox(width: 9.0,),
            
          ],
 
         
        ),


        body:
        
        Padding( padding: const EdgeInsets.only(left: 21 , top: 19) , 

          child: 
          SingleChildScrollView(
            child: Column( children: [
              Align( alignment:Alignment.centerLeft,
          
               child: Text("Hey Emily" ,
                style: TextStyle(color: Color.fromARGB(255, 2, 138, 250) ,
                 fontWeight: FontWeight.w400 , 
                 fontSize: 14,
                 fontFamily: 'Urbanist'),)),
          
              SizedBox(height: 18,),
          
              Align( alignment: Alignment.centerLeft,
          
                child: Text("My Library" , 
                style: TextStyle(color: Color.fromRGBO(22, 92, 115, 1) ,
                 fontWeight: FontWeight.w800 ,
                  fontSize: 20,
                  fontFamily: 'Urbanist'),),
              ),
          
            SizedBox(height: 20,),
              
              SingleChildScrollView( scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        
                    Book(text : "Name of Book" ,
                     image: "assets/images/Rectangle 4.png",
                     percent: 1,),
                    Book(text : "Name of Book" ,
                     image: "assets/images/Rectangle 2.png",
                     percent: 0.6,),
                        
                     SizedBox(
                      height: 156,
                      width: 117,
                      child: ClipRRect( 
                        child: DottedBorder(
                        
                          borderType: BorderType.Rect,
                          color: Color.fromRGBO(151, 151, 151, 1),
                          strokeWidth: 1,
                          dashPattern: [3],
                          strokeCap: StrokeCap.round,
                        
                          child: Align( alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                            Icon(Icons.add,
                             color: Color.fromRGBO(101, 107, 140, 1)),
                        
                             Text("Discover More" ,
                             style: TextStyle(
                              color: Color.fromRGBO(101, 107, 140, 1),
                              fontWeight: FontWeight.w600 ,
                              fontSize: 12,
                              fontFamily: 'Urbanist')),
                            ],),
                        ),
                        ) ,
                        
                        borderRadius: BorderRadius.circular(5), 
                      
                     ),
                     ),
                     
                        
                  ],
                ),
              )
            ,
          
            Padding( padding: EdgeInsets.only(top: 38),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding( padding: EdgeInsets.only(left:20),
                    child: Text("My Wishlist" ,
                    style: TextStyle(
                    color: Color.fromRGBO(228, 149, 39, 1),
                    fontSize: 20,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,)
                    ,),
                  ),
                  Padding(padding: EdgeInsets.only(right: 15),
                    child: OutlineButton(text: "see more"))
                ],
              ),
            ),
          
            Padding(padding:EdgeInsets.only(left: 41 , top: 16),
          
              child: Row(
                children: [
            
                  Books(image: 'assets/images/Rectangle 1.png', name: "Good Company", publisher: "Cynthia D.S", rate: 4,),
                  Books(image: 'assets/images/Rectangle 1-1.png', name: "Book Lovers", publisher: "Emily Henry", rate: 4,)
                
              ],
            
              ),
            ),
          
            Padding( padding: EdgeInsets.only(left: 41 , top: 13),
              child: Row(
                children: [
            
                  Books(image: 'assets/images/Rectangle 1-2.png', name: "Good Company", publisher: "Cynthia D.S", rate: 4,),
                  Books(image: 'assets/images/Rectangle 1-3.png', name: "Book Lovers", publisher: "Emily Henry", rate: 4,)
                
              ],
            
              ),
            ),
          
            Padding( padding: EdgeInsets.only(left: 41 , top: 13),
              child: Row(
                children: [
            
                  Books(image: 'assets/images/Rectangle 1-4.png', name: "Good Company", publisher: "Cynthia D.S", rate: 4,),
                  Books(image: 'assets/images/Rectangle 1-5.png', name: "Book Lovers", publisher: "Emily Henry", rate: 4,)
                
              ],
            
              ),
            )
          
            ]
          
          
            ),
          ),
         ),
        bottomNavigationBar: BottomNavigation(),

        ),

    );
  }

} 



