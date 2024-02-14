
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_,Wiew.dart';


class Welcom_Wiew extends StatefulWidget {
  const Welcom_Wiew({Key? key}) : super(key: key);

  @override
  State<Welcom_Wiew> createState() => _Welcom_WiewState();
}

class _Welcom_WiewState extends State<Welcom_Wiew> {
  final List levels = [
    "inactive",
    "Beginner",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image2.png"),fit: BoxFit.cover)
        ),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start
          ,
          children: <Widget> [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(

                  padding: EdgeInsets.only(top: 70),
                  child: Text("HARD   ",
                    style: GoogleFonts.bebasNeue(
                    fontSize: 32,
                    color: Colors.white,
                    letterSpacing: 1.8           //harf boşluğu
                  ),),
                ),
                Padding(

                  padding: EdgeInsets.only(top: 70),
                  child: Text("ELEMENT", style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: Color(0XFF40D876),
                      letterSpacing: 1.8           //harf boşluğu
                  ),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text("About You ", style: GoogleFonts.lato(
                  fontSize: 42 ,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                SizedBox(
                  height: 20,
                ),
                Text("We want to know more about you follow the next steps \n to complete the information   ",
                  // Sizinle ilgili daha fazla Bilgi edinmek istiyorsanız adımları izleyin
                style: GoogleFonts.lato(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w400
                ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 226,
                      width: MediaQuery.of(context).size.width,


                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                         itemCount: levels.length,
                         itemBuilder: (BuildContext context, index)
                     {
                       return Padding(
                         padding: const EdgeInsets.only(right: 10),

                         child: Container(
                           height: 226,
                           width: 195,
                           decoration: BoxDecoration(
                             color: Color(0xFF232441),
                             borderRadius: BorderRadius.circular(20.0),),
                           child: Padding(
                             padding: const EdgeInsets.only(left:  20, top: 30 ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                               Text("I am  ", style: GoogleFonts.lato(
                                 fontSize:30 ,
                                 color: Color (0XFF40D876),
                               ),),
                               SizedBox(height: 10,),
                               Text(
                                 levels[index], style: GoogleFonts.lato(
                                 fontSize: 30 ,
                                 color: Color (0XFF40D876),
                                 fontWeight: FontWeight.bold
                               ),),
                                 SizedBox(height: 20,),
                                 Text("I am never trained",style: GoogleFonts.lato(
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white
                                 ),)
                             ],),
                           ),
                         ),
                       );
                     })
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0,top: 40.0 ,bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Skip Intro",style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white30
                      ),),
                      GestureDetector(

                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeView()));
                        },
                        child: Container(
                          width: 139,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0XFF40D876),
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Center(
                            child: Text(
                              "Next ",style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )





          ],
        ),
      ),
]
    )
        ),
    );
  }
}
