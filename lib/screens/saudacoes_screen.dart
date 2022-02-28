import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tradutor_local/models/vocabulario_model.dart';
import 'package:tradutor_local/screens/main_screen.dart';
import 'package:soundpool/soundpool.dart';
typedef OnError = void Function(Exception exception);

Soundpool pool = Soundpool(streamType: StreamType.notification);
class Saudacoes extends StatefulWidget {
  const Saudacoes({Key key}) : super(key: key);

  @override
  _SaudacoesState createState() => _SaudacoesState();
}

class _SaudacoesState extends State<Saudacoes> {

  var basico = <Vocabulario>[];
  @override
  void initState() {
    super.initState();
    addVoca();
  }
  void addVoca() {
    basico.add(new Vocabulario(
        palavra: "Bom dia/Boa tarde/Boa noite",
        mwani: "Salama",
        macua: "Salama",
        maconde: "Salama",
        audiomacua: "tudo_bomdia.mp3",
        audiomaconde: "tudo_bomdia.mp3",
        audiomwani: "tudo_bomdia.mp3"
        ));

    basico.add(new Vocabulario(
        palavra: "Olá a todos",
        mwani: "Salama wanupia",
        macua: "Salama athuoteni",
        maconde: "Maxala uti",
        audiomacua: "macua_olaatodos.mp3",
        audiomaconde: "maconde_olaatodos.mp3",
        audiomwani: "mwani_olaatodos.mp3"));
    basico.add(new Vocabulario(
        palavra: "como está/estão?",
        mwani: "Muaja Muapo sana?",
        macua: "Atu oteni n'gahavo salama?",
        maconde: "Muamba Daxi?",
        audiomacua: "macua_comoestao.mp3",
        audiomwani: "mwani_comoestao.mp3",
        audiomaconde: "maconde_comoestao.mp3"
        ));
    basico.add(new Vocabulario(
        palavra: "tudo bem?",
        mwani: "mulamuka vyema?",
        macua: "n'gahavo salama?",
        maconde: "Mupalyi uti?",
        audiomacua: "macua_tudobem.mp3",
        audiomaconde: "maconde_tudobem.mp3",
        audiomwani: "mwani_olaatodos.mp3"));
    basico.add(new Vocabulario(
        palavra: "como vai?",
        mwani: "Muaja Muapo sana?",
        macua: "Atu oteni muhavo salama?",
        maconde: "Xingumi uti?",
        audiomacua: "macua_comoestao.mp3",
        audiomaconde:"maconde_comoestao.mp3",
        audiomwani: "mwani_comoestao.mp3"
        
         ));
    basico.add(new Vocabulario(
        palavra: "como se chama?/ Te chamas?",
        mwani: "Zina reno nani?",
        macua: "ntxina nenhu tipani?",
        maconde: "lyinalyakho nhani?",
        audiomacua: "macua_comosechama.mp3",
        audiomaconde: "maconde_comosechama.mp3",
        audiomwani: "mwani_comosechama.mp3"
        ));

    basico.add(new Vocabulario(
        palavra: "De onde vens?",
        mwani: "muankulawa ndei ?",
        macua: "N'nokuma vai?",
        maconde: "Mwaloka Kwaxi/Kwenu kwaxi?",
        audiomacua: "macua_dondevens.mp3",
        audiomwani: "maconde_dondevens.mp3",
        audiomaconde: "mwani_dondevens.mp3"));
    basico.add(new Vocabulario(
        palavra: "Onde  a sra/Sr vivia vivias antes de....?",
        mwani: "vita mutira ndei?",
        macua: "muthawale ikotho vai?",
        maconde: "Uxikala kwaxi?",
        audiomacua: "macua_ondevivia.mp3",
        audiomaconde: "mwani_ondevivia.mp3",
        audiomwani: "maconde_ondevivia.mp3"
        ));
    basico.add(new Vocabulario(
        palavra: "Quantos anos tem? ",
        mwani: "muanae miaka mengai ?",
        macua: "Nrina miaka mikavi?",
        maconde: "Uve na myiaka Vingaphi?",
        audiomacua: "macua_quantosanos.mp3",
        audiomwani:"mwani_quantosanos.mp3",
        audiomaconde:"maconde_quantosanos.mp3"
         ));
    basico.add(new Vocabulario(
        palavra: "Quantos são em casa?",
        mwani: "pakayapa mua wano wengapi?",
        macua: "wapuani muri athu akavi?",
        maconde: "Mwe'manu m'mangapi?",
        audiomwani: "mwani_quantossao.mp3",
        audiomaconde: "maconde_quantossao.mp3",
        audiomacua: "macua_quantossao.mp3"));

    basico.add(new Vocabulario(
        palavra: "como se chama o dono da casa onde vive?",
        mwani: "muanhewe nhumba nani\n zina rake nani?",
        macua: "muanene inupa tipani\n ntxina nanawe tipan",
        maconde: " Lyina lya mwene in'gande?",
        audiomacua: "macua_acolhedor.mp3",
        audiomwani: "mwani_acolhedor.mp3",
        audiomaconde:"maconde_acolhedor.mp3"
        ));
    basico.add(new Vocabulario(
        palavra: "Tem algum documento de identificação?",
        mwani: "muanae documento\n isaka kuwa yonse?",
        macua: "muahana insoko ?",
        maconde: "Undivanao Chiethi?",
        audiomacua: "macua_documento.mp3",
        audiomwani: "mwani_documento.mp3",
        audiomaconde: "maconde_documento.mp3"
        ));
    basico.add(new Vocabulario(
        palavra: "o teu bilhete de identidade?",
        mwani: "muanae BI yenu?",
        macua: "muhana BI yawenhu?",
        maconde: " Undivanao Bilhete yako?",
        audiomacua: "macua_bi.mp3",
        audiomaconde: "maconde_bi.mp3",
        audiomwani:"mwani_bi.mp3"));

  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
       appBar: AppBar(
    
         backgroundColor: Colors.white,
         leading: IconButton(
           icon: Icon(Icons.arrow_back,color: Colors.black,),
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>MyHomePage()),
             );
           },
         ),
       ),
       body: Container(
      child:ListView.builder(

          itemCount: basico.length,
          itemBuilder: (context,index){
            print(basico.length);
            return Container(
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30),
               boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
               color: Colors.white,
           
           ),
              height: 220,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(basico[index].palavra,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,bottom:5 ),
                        child: Row(
                          children: [
                            Text("Macua: "+basico[index].macua,
                             style: TextStyle(
                        fontSize: 18,
                        
                         fontStyle: FontStyle.italic
                        ),),
                            IconButton(
                           onPressed: () async{

                             
                             var soundId = await rootBundle.load("assets/"+basico[index].audiomacua).then((ByteData soundData){
                               return pool.load(soundData);
                             });
                             var streamId=await pool.play(soundId);
                             
                           },
                           icon: Icon(  Icons.play_arrow),
                           color: Colors.blueAccent,)                    
                          ],
                        ),
                      ),
                      Padding(
                       padding: const EdgeInsets.only(left:10.0,bottom:5 ),
                        child: Row( 
                            children: [
                            Text("Maconde: "+basico[index].maconde, style: TextStyle(
                        fontSize: 18,
                       
                         fontStyle: FontStyle.italic
                        ),),
                            IconButton(
                           onPressed: ()async {

                             var soundId = await rootBundle.load("assets/"+basico[index].audiomaconde).then((ByteData soundData){
                               return pool.load(soundData);
                             });
                             var streamId=await pool.play(soundId);
                           },
                              icon: Icon( Icons.play_arrow),
                           color: Colors.blueAccent,)
                          ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,bottom:5 ),
                        child: Row( 
                            children: [
                            Text("Mwani: "+basico[index].mwani, style: TextStyle(
                        fontSize: 18,
                        
                         fontStyle: FontStyle.italic
                        ),),
                            IconButton(
                           onPressed: () async{

                             var soundId = await rootBundle.load("assets/"+basico[index].audiomwani).then((ByteData soundData){
                               return pool.load(soundData);
                             });
                             var streamId=await pool.play(soundId);
                             
                           },
                           icon: Icon( Icons.play_arrow ),
                           color: Colors.blueAccent,
                           )                    
                          ],),
                      )
                    ],
                  ),
                ],
              ),

            );
          }         
          )
    
       )
      ),
    );
  }
  // class ThemeController extends GetxController {
  //
  // bool isDarkMode = true;
  //
  // void toggleDarkMode() {
  // isDarkMode = !isDarkMode;
  // if (isDarkMode) {
  // Get.changeTheme(ThemeData.dark());
  // } else {
  // Get.changeTheme(ThemeData.light());
  // }
  // update();
  // }
}
