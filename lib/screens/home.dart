import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mshope/screens/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
Navigator.push(context,MaterialPageRoute(builder: (context) => Login(),));
        },
        child:
            Container(
              width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
            color: Colors.brown,

               child: Center(
                 child: Text('M',
                              style: GoogleFonts. lacquer(
                   textStyle:TextStyle(
                     fontSize: 200,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   )),),
               ))
        

        ),

    );
  }
}
