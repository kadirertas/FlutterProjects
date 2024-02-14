import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work_app/package/home..dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Categorry> category= [
   Categorry(
       imageUrl: "assets/emily.png",
       name: "Yoga exercies"),
    Categorry(
        imageUrl: "assets/sule.png",
        name: "Example exercies"),
    Categorry(
        imageUrl: "assets/alexsandra.png",
        name: "Yoga exercies"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image3.png"),fit: BoxFit.cover)
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 70 , left: 20,
      ),
      child: Column(

        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:<Widget> [
                    Text("Hey, ",style: GoogleFonts.bebasNeue(
                        fontSize: 32,
                        color: Colors.white,
                        letterSpacing: 1.8           //harf boşluğu
                    ),),
                    Text("Zezo", style: GoogleFonts.bebasNeue(
                        fontSize: 32,
                        color: Color(0XFF40D876),
                        letterSpacing: 1.8           //harf boşluğu
                    ),),

                  ],
                ),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      width: 3,
                      color: Color(0XFF40D876)
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/emely.jpg"),
                        fit: BoxFit.cover
                    )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white54.withOpacity(.1),
                borderRadius: BorderRadius.circular(30.0)

              ),

              child: Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color(0XFF40D876),
                      borderRadius: BorderRadius.circular(30.0)

                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      size: 40 ,
                      color: Colors.white,


                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20.0,top:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget> [
                    Text("Find ",style:  GoogleFonts.lato(
                    fontSize: 26,
                    color: Color(0XFF40D876),

                      fontWeight: FontWeight.bold
                ),),
                    Text(" your Workout",style: GoogleFonts.lato(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Icon(
                    Icons.filter_alt_outlined,
                  size: 40,
                  color: Colors.white,

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: 300,
              height: 46,
              decoration: BoxDecoration(
                color: Color(0xFF232441),
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "SEARCH WORKOUT",hintStyle: GoogleFonts.lato(
                    color: Colors.white54
                  ),
                    border: InputBorder.none,
                   icon:  Icon(Icons.search,
                   size: 30,
                   color: Colors.white),

                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                   width: 90,
                   height: 30,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 1,
                      color: Colors.white
                  ),
                  ),
                  child: Center(
                    child: Text("Popular",style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                ),
                Text("Hard workout",style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                Text("Full body",style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                Text("Crossfit",style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 05.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Popular Workout",style: GoogleFonts.lato(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 202,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
            itemCount:  category.length   ,
            itemBuilder: (BuildContext context , index ){

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      height: 182,
                      width: 141,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(category[index].imageUrl)
                        )
                      ),
                   ),
                    Text(category[index].name,style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),

                    )],
                ),
              );
    })
          ),

        ],
      ),
    ),

    ));
  }
}
