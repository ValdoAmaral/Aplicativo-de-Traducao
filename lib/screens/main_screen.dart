import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'package:tradutor_local/screens/conceitos_basicos_screen.dart';
import 'package:tradutor_local/screens/saudacoes_screen.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50,top: 20,left: 10),
                child: Text("Tradutor oficial Macua,Maconde e Mwani" ,style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: CarouselSlider(
                      options: CarouselOptions(autoPlay: false, height: 400,enlargeCenterPage: true),
                      items: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            child: InkWell(
                              onTap: () {
                                  Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>ConceitosBasicos()),
             );


                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey[300],
                                            offset: Offset(-2, -1),
                                            blurRadius: 5),
                                      ]),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Image.asset("fotos/tradutor98.png")),
                                      Text(
                                        "Conceitos Basicos",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            child: InkWell(
                              splashColor: Colors.black,
                              onTap: () {
                                  Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>Saudacoes()),
             );
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey[300],
                                            offset: Offset(-2, -1),
                                            blurRadius: 5),
                                      ]),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Image.asset("fotos/saudacoes.jpg")),
                                      Text(
                                        "Saudacoes e cumprimentos",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
// This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}
