import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';
import 'package:tradutor_local/models/vocabulario_model.dart';
import 'package:tradutor_local/screens/main_screen.dart';

typedef OnError = void Function(Exception exception);


Soundpool pool = Soundpool(streamType: StreamType.notification);

class ConceitosBasicos extends StatefulWidget {
  const ConceitosBasicos({Key key}) : super(key: key);

  @override
  _ConceitosBasicosState createState() => _ConceitosBasicosState();
}

class _ConceitosBasicosState extends State<ConceitosBasicos> {
   var basico = <Vocabulario>[];
    @override
  void initState() {
    super.initState();
    addVoca();
  }
  void addVoca() {
    basico.add(new Vocabulario(
        palavra: "Hoje",
        mwani: "lelo",
        macua: "Ilelo",
        maconde: "Nelo",
        audiomacua: "macua_hoje.mp3",
        audiomwani: "mwani_hoje.mp3",
        audiomaconde: "maconde_hobe.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Ontem",
        mwani: "idjana",
        macua: "ntxana",
        maconde: "Lyido",
        audiomacua: "macua_onten.mp3",
        audiomwani: "mwani_ontem.mp3",
        audiomaconde: "maconde_ontem.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Amanha",
        mwani: "makeso",
        macua: "melo",
        maconde: "Lunduno",
        audiomacua: "macua_amanha.mp3",
        audiomwani: "mwani_amanha.mp3",
        audiomaconde: "maconde_amanha.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Ano",
        mwani: "miakha",
        macua: "mwaka",
        maconde: "mwaka",
        audiomacua: "macuamaconde_ano.mp3",
        audiomwani: "mwani_ano.mp3",
        audiomaconde: "macuamaconde_ano.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Mes",
        mwani: "mwezi",
        macua: "mweri",
        maconde: "Mwedi",
        audiomacua: "macua_mes.mp3",
        audiomwani: "mwani_mes.mp3",
        audiomaconde: "maconde_mes.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Depois",
        mwani: "nakissa",
        macua: "ihora ikina",
        maconde: "Badae",
        audiomacua: "macua_depois.mp3",
        audiomwani: "mwani_depois.mp3",
        audiomaconde: "maconde_depois.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "agora",
        mwani: "sambipa",
        macua: "phiyaru",
        maconde: "Ambi",
        audiomacua: "macua_agora.mp3",
        audiomwani: "mwani_agora.mp3",
        audiomaconde: "maconde_agora.mp3"

    ));
    basico.add(new Vocabulario(
        palavra: "antes",
        mwani: "Mida",
        macua: "uhinaya",
        maconde: "Ukanava",
        audiomacua: "macua_antws.mp3",
        audiomwani: "mwani_antes.mp3",
        audiomaconde: "maconde_antes.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Comida",
        mwani: "txakurya",
        macua: "iyolha",
        maconde: "Xakulya",
        audiomacua: "macua_comida.mp3",
        audiomwani: "mwani_comida.mp3",
        audiomaconde: "maconde_comida.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Crianca",
        mwani: "wassimana",
        macua: "ashinamuane",
        maconde: "Ndyoko/ Vadyoko",
        audiomacua: "macua_crianca.mp3",
        audiomwani: "mwani_crianca.mp3",
        audiomaconde: "maconde_crianca.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Amamentar",
        mwani: "konhessa",
        macua: "wamuiha",
        maconde: "Kudyan'gedya",
        audiomacua: "macua_amamentar.mp3",
        audiomwani: "mwani_amamentar.mp3",
        audiomaconde: "maconde_amamentar.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Gravidez/Gravida",
        mwani: "Mimba",
        macua: "Irukullo",
        maconde: "vithumbo",
        audiomacua: "macua_gravidez.mp3",
        audiomwani: "mwani_gravidez.mp3",
        audiomaconde: "maconde_gravidez.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Filho",
        mwani: "muana",
        macua: "muana",
        maconde: "mwana",
        audiomacua: "tudo_crianca.mp3",
        audiomwani: "tudo_crianca.mp3",
        audiomaconde: "tudo_crianca.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Estudar",
        mwani: "kufioma",
        macua: "ussoma",
        maconde: "Kuxomya",
        audiomacua: "macua_estudar.mp3",
        audiomwani: "mwani_estuddar.mp3",
        audiomaconde: "maconde_estudar.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Comprar",
        mwani: "ku uza",
        macua: "u tuma",
        maconde: "Kuxuma",
        audiomacua: "macua_comprar.mp3",
        audiomwani: "mwani_comprar.mp3",
        audiomaconde: "maconde_comprar.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Trocar",
        mwani: "ku sianissa",
        macua: "u virikhaniha",
        maconde: "Kubadilyi",
        audiomacua: "macua_trocar.mp3",
        audiomwani: "mwani_trocar.mp3",
        audiomaconde: "maconde_trocar.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Explicar",
        mwani: "ku funda",
        macua: "uhimia",
        maconde: "Kum;manhia",
        audiomacua: "macua_explicar.mp3",
        audiomwani: "mwani_explicar.mp3",
        audiomaconde: "maconde_explicar.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Perguntar",
        mwani: "ku dairi",
        macua: "u koha",
        maconde: "Kudya",
        audiomacua: "macua_perguntar.mp3",
        audiomwani: "mwani_perguntar.mp3",
        audiomaconde: "maconde_perguntat.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Homem",
        mwani: "n'lume",
        macua: "muanlopuana",
        maconde: "N'nume",
        audiomacua: "macua_homem.mp3",
        audiomwani: "mwani_homem.mp3",
        audiomaconde: "maconde_homem.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Mulher",
        mwani: "muanamuka",
        macua: "n'tiana",
        maconde: "N'nkongwe",
        audiomacua: "macua_mulher.mp3",
        audiomwani: "mwani_mulher.mp3",
        audiomaconde: "maconde_mulher.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "irmao/irma",
        mwani: "nlumbuanko/\n nunuwango",
        macua: "nhenhaka/\n  muan rokoraka",
        maconde: "N'numbuo/\n Nkuluwo",
        audiomacua: "macua_irmao.mp3",
        audiomwani: "mwani_irmao.mp3",
        audiomaconde: "maconde_irmao.mp3"
    ));
    basico.add(new Vocabulario(
        palavra: "Obrigado/a",
        mwani: "Nixukhuru",
        macua: "assante /\n kioshukuru",
        maconde: "Assante/\n Ndilambwalela",
        audiomacua: "todos_obrigado.mp3",
        audiomwani: "todos_obrigado.mp3",
        audiomaconde: "todos_obrigado.mp3"
    ));

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
                           icon: Icon(Icons.play_arrow),
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
                           icon: Icon(Icons.play_arrow),
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
                           icon: Icon(Icons.play_arrow),
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
}
