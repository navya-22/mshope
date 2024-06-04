import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mshope/screens/detail1.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Text('  Mshope ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: '  Explor',border: InputBorder.none),
                  ),
                ),
              ),
              Text('  Popular',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 TextButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Detail1(),));
                 },
                   child: popularContainer(
                       image: AssetImage('assess/images/saree.jpg'),
                       child1: Text('saree collection',style: TextStyle(color: Colors.white),),
                       //child2: Text('collection')
                   ),
                 ),
                 TextButton(
                   onPressed: () {
          
                   },
                   child: popularContainer(
                     image: AssetImage('assess/images/jewellery.jpg'),
                     child1: Text('Jewellery collection',style: TextStyle(color: Colors.white),),
                     //child2: Text('collection')
                   ),
                 ),
                 TextButton(
                   onPressed: () {
          
                   },
                   child: popularContainer(
                     image: AssetImage('assess/images/home-appliances.jpg'),
                     child1: Text('Home Applicances collection',style: TextStyle(color: Colors.white),),
                     //child2: Text('collection')
                   ),
                 ),
                 TextButton(
                   onPressed: () {
          
                   },
                   child: popularContainer(
                     image: AssetImage('assess/images/school.jpg'),
                     child1: Text('School  collection',style: TextStyle(color: Colors.white),),
                     //child2: Text('collection')
                   ),
                 ),
               ],
             ),
           ),
           Text(' Recommented for you ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
           SingleChildScrollView(
           scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 TextButton(
                   onPressed: () {
          
                   },
                   child: recomment(
                       image:AssetImage('assess/images/weastern.jpg'),
                       text: 'Western collections'),
                 ),
                 TextButton(
                   onPressed: () {
          
                   },
                   child: recomment(
                       image:AssetImage('assess/images/saree1.jpg'),
                       text: 'Saree'),
                 ),
                 TextButton(
                   onPressed: () {
          
                   },
                   child: recomment(
                       image: AssetImage('assess/images/kids.jpg'),
                       text: 'Kids'),
                 ),
                 TextButton(
                   onPressed: () {
          
                   },
                   child: recomment(image: AssetImage('assess/images/Men.jpg'),
                       text: 'Men'),
                 )
               ],
             ),
           ),
              Text(' Recently Viewed ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: recentlyViewed(image: AssetImage('assess/images/kids.jpg'))),
                    TextButton(
                        onPressed: () {},
                        child: recentlyViewed(image: AssetImage('assess/images/saree1.jpg'))),
                    TextButton(
                      onPressed: () {},
                        child: recentlyViewed(image: AssetImage('assess/images/Men.jpg'))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }






  Container recentlyViewed({required ImageProvider image,}) {
    return Container(
      // padding: EdgeInsets.all(10.0),
      //margin: EdgeInsets.all(10.0),
        height: 200,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image:  image,
            fit: BoxFit.cover,
          ),
        ),
    );
    }
  
  
  
  
  
  
  Container recomment({required ImageProvider image,
    required String text,}) {
    return Container( 
     // padding: EdgeInsets.all(10.0),
      //margin: EdgeInsets.all(10.0),
      height: 200,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image:  image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(bottom: 10, right: 10,
            child: Text(text,style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }

  Container popularContainer(
      {required ImageProvider image,
        required Widget child1,
       // required Widget child2
      }) {
    return Container(
      //padding: EdgeInsets.all(10.0),
      //margin: EdgeInsets.all(10.0),
      height: 260,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 48,
            left: 10,
            child: Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Center(child: child1),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 10,
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 5),
                  Text(
                    '4.1',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
         // Positioned(bottom: 10, right: 10, child: child2),
        ],
      ),
    );
  }

  Container buildContainer({required String text}) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(10.0),
      height: 60,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

