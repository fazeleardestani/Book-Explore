import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class searchfield extends StatelessWidget {
  const searchfield({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( height: 38, width: 212,
            child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.black12,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0)),
              
              suffixIcon: Image.asset('assets/images/ri_search-line.png' , height: 24 , width: 24 ),
            ),
          
        ),
    );
  }
}

// ignore: must_be_immutable
class Book extends StatelessWidget {

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

class OutlineButton extends StatelessWidget {
  
  String? text;

  OutlineButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
      },
      child: Text('$text' ,
       style: TextStyle(
      color: Color.fromRGBO(228, 149, 39, 1),
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Urbanist')
      ,),
    );
  }
}

class Books extends StatelessWidget {

  String image;
  String name;
  String publisher;
  double rate;


  Books({required this.image , required this.name , required this.publisher , required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Container(
              height: 85,
              width: 60,
              child: ClipRRect(child: Image.asset("$image", fit: BoxFit.fill), 
              borderRadius: BorderRadius.circular(5)) , 
        ),

      Padding( padding: EdgeInsets.only(left: 7,right: 7 , top: 10 , bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      
                children: [
                  Padding( padding: EdgeInsets.only(bottom: 2),
                    child: Text("$name" , style: TextStyle(
                            color: Color.fromRGBO(22, 92, 115, 1),
                            fontSize: 10,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,)
                            ,),
                  ),
            
                Text("$publisher" , style: TextStyle(
                          color: Color.fromRGBO(151, 151, 151, 1),
                          fontSize: 10,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,)
                          ,),

                SizedBox(height: 29,),

                RatingBar.builder(initialRating: rate,
                          itemSize: 10,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ), onRatingUpdate: (double value) {  },)
      
          ],
        ),
      )

      ],
    );
  }
}


class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
  selectedLabelStyle: TextStyle(
    fontFamily: 'Urbanist',
    fontSize: 10,
    fontWeight: FontWeight.w500
  ),
  unselectedLabelStyle: TextStyle(
    fontFamily: 'Urbanist',
    fontSize: 10,
    fontWeight: FontWeight.w500
  ),
  selectedIconTheme: IconThemeData(color: Color.fromRGBO(228, 149, 39, 1)),
  unselectedIconTheme: IconThemeData(color: Color.fromRGBO(151, 151, 151, 1)),
  selectedItemColor: Color.fromRGBO(22, 92, 115, 1),
  unselectedItemColor: Color.fromRGBO(151, 151, 151, 1),
  showSelectedLabels: true,
  showUnselectedLabels: true,
  currentIndex: 0,
  items: [
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4, right: 20, left: 20),
        child: SizedBox(
          width: 24,
          height: 24,
          child: ImageIcon(
            AssetImage("assets/images/ion_library.png"),
          ),
        ),
      ),
      label: "My Library",
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4, right: 20, left: 20),
        child: SizedBox(
          width: 24,
          height: 24,
          child: ImageIcon(
            AssetImage("assets/images/Vector.png"),
          ),
        ),
      ),
      label: "Explore",
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4, right: 20, left: 20),
        child: SizedBox(
          width: 24,
          height: 24,
          child: ImageIcon(
            AssetImage("assets/images/mdi_cart-variant.png"),
          ),
        ),
      ),
      label: "Cart",
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4, right: 20, left: 20),
        child: SizedBox(
          width: 24,
          height: 24,
          child: ImageIcon(
            AssetImage("assets/images/fluent_people-community-16-filled.png"),
          ),
        ),
      ),
      label: "Community",
    ),
  ],
);

  }
}
