import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              children: [
                Text('    Explore'),
                Spacer(),
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.blue,
                ),
                Text('  Mshope,India  '),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.blue,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'M',
                    style: GoogleFonts.labrada(
                      textStyle: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: MediaQuery.of(context).size.width - 20.0,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[50],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Find things ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildContainer(text: 'Kids'),
                  buildContainer(text: 'Western Wear'),
                  buildContainer(text: 'Saree'),
                  buildContainer(text: 'Men Clothing'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '   Popular',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  popularContainer(
                    image: AssetImage('assess/images/kids.jpg'),
                    child1: Text(
                      "Kid's Wear",
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 20),
                  popularContainer(
                    image: AssetImage('assess/images/saree.jpg'),
                    child1: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail1(),
                          ),
                        );
                      },
                      child: Text(
                        'Saree',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 20),
                  popularContainer(
                    image: AssetImage('assess/images/men.jpg'),
                    child1: Text(
                      "Men's Wear",
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 20),
                  popularContainer(
                    image: AssetImage('assess/images/western.jpg'),
                    child1: Text(
                      'Western Wear',
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 20),
                  popularContainer(
                    image: AssetImage('assess/images/jewellery.jpg'),
                    child1: Text(
                      'Jewellery',
                      style: TextStyle(color: Colors.white),
                    ),
                    child2: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '  Recommended',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Column(
                    children: [
                      recomment(
                        image: AssetImage('assess/images/saree1.jpg'),
                        text: '9.8⭐',
                      ),
                      Text('Explore Saree', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      recomment(
                        image: AssetImage('assess/images/home-appliances.jpg'),
                        text: '5⭐',
                      ),
                      Text('Home Appliance', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      recomment(
                        image: AssetImage('assess/images/school.jpg'),
                        text: '10⭐',
                      ),
                      Text('School', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container recomment({
    required ImageProvider image,
    required String text,
  }) {
    return Container(
      height: 170,
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
            bottom: 10,
            right: 10,
            child: Container(
              width: 60,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container popularContainer({
    required ImageProvider image,
    required Widget child1,
    required Widget child2,
  }) {
    return Container(
      height: 210,
      width: 200,
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
          Positioned(bottom: 10, right: 10, child: child2),
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
