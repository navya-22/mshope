import 'package:flutter/material.dart';

class Detail1 extends StatefulWidget {
  const Detail1({super.key});

  @override
  State<Detail1> createState() => _Detail1State();
}

class _Detail1State extends State<Detail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                // height:400,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image.asset('assess/images/saree.jpg',
                      // height: 300,
                      //width: 500,
                    ),
                    Text(
                      ' Soft silk pleasant red with Green saree, designer wear by Ibis Fab',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 25),),
                    Row(
                      children: [
                        Text(
                          '   4.8⭐⭐⭐⭐', style: TextStyle(fontWeight: FontWeight
                            .bold,
                            fontSize: 20),),
                        SizedBox(width: 120,),
                        Text(
                          "  \$999.0", style: TextStyle(fontWeight: FontWeight
                            .bold,
                            fontSize: 25),),
                      ],
                    ),
                   SizedBox(height: 20,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recommented for you ', style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {

                            },
                            child: recomment(
                                image: AssetImage('assess/images/saree3.jpg'),
                                text: "  \$500"),
                          ),
                          TextButton(
                            onPressed: () {

                            },
                            child: recomment(
                                image: AssetImage('assess/images/saree4.jpg'),
                                text: "  \$700"),
                          ),
                          TextButton(
                            onPressed: () {

                            },
                            child: recomment(
                                image: AssetImage('assess/images/saree5.jpeg'),
                                text: "  \$9999"),
                          ),
                          TextButton(
                            onPressed: () {

                            },
                            child: recomment(
                                image: AssetImage('assess/images/saree7.jpg'),
                                text: "  \$1000"),
                          ),
                          TextButton(
                            onPressed: () {

                            },
                            child: recomment(
                                image: AssetImage('assess/images/saree8.jpg'),
                                text: "  \$680"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container recomment({required ImageProvider image,
    required String text,}) {
    return Container(height: 200,
      width: 350,
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
            bottom: 10, right: 10, child: Container(width: 70, height: 30,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Text(text, style: TextStyle(color: Colors.white,fontSize: 20),),
          ),),
        ],
      ),
    );
  }
}
