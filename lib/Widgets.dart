import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class searchfield extends StatelessWidget {
  const searchfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 212,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search, size: 24,
          ),
        ),
      ),
    );
  }
}


class Book extends StatelessWidget {

//   const Book({Key? key, required this.text}):super(key: key);
// final ValueChanged<String> text;

String? text;
String? image;
double percent;

  Book({required this.text , required this.image , required this.percent});


  @override
  Widget build(BuildContext context) {
    return Padding( padding: EdgeInsets.only(right: 14) ,
      child: Container(
        
        child: Column(
          children: [
            Container(
              height: 158,
              width: 117,
              child: ClipRRect(child: Image.asset("$image", fit: BoxFit.fill), 
              borderRadius: BorderRadius.circular(5)) ,
              
            ),
    
            SizedBox(height: 10,),
    
            Align( alignment: Alignment.centerLeft,
              child: Text("$text" , style: TextStyle(
                    fontWeight: FontWeight.w600 ,
                    fontSize: 12,
                    fontFamily: 'Urbanist'),),
            ),

            Row(
              children:[ Align( alignment: Alignment.centerLeft,
                child: Padding( padding: EdgeInsets.only(top: 14 , right: 7),
                  child: LinearPercentIndicator(
                      width: 86,
                      lineHeight: 4,
                      percent: percent,
                      backgroundColor: Color.fromRGBO(218, 218, 218, 1),
                      progressColor: Color.fromRGBO(22, 92, 115, 1),
                      barRadius: Radius.circular(5),
                      
                    ),
                ),
              ),
            
            Align( alignment: Alignment.centerLeft,
              child: Padding( padding: EdgeInsets.only(top: 14),
                child: Text("${(percent*100).round()}%",
                style: TextStyle(fontSize: 8 , 
                fontFamily: 'Urbanist' ,
                fontWeight: FontWeight.w600),),
              ),
            )
          ]),


            
            
          ],
        ),
      ),
    );
  }
}

class 