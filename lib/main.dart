
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
            child: Icon(Icons.menu, color: Colors.black, size: 24,),
          ),
        
          title: searchfield(),
          actions: [

            SizedBox(width: 17.0,),
            Icon(Icons.qr_code_scanner_rounded, color: Colors.black87, size: 28,),
            SizedBox(width: 17.0,),
            Padding(padding: EdgeInsets.only(right: 24) ,
             child:Icon(Icons.notification_add_rounded,
              color: Colors.orange, size: 24,),),
            SizedBox(width: 9.0,),
            
          ],
 
         
        ),


        body:
        
        Padding( padding: const EdgeInsets.only(left: 21 , top: 19) , 

          child: 
          Column( children: [
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
            
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Book(text : "good girl bad boold" ,
                 image: "assets/images/good girl bad blood.jpg",
                 percent: 1,),
                Book(text : "as good as dead" ,
                 image: "assets/images/as good as dead.jfif",
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
            )
          ]
          ),
         ),

        ),

    );
  }

} 



