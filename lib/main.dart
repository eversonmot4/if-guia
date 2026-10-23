import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Game01(),
    );
  }
}


//tela princial Game01
class Game01 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>{}, icon:Icon(Icons.arrow_back)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Posso ou não posso?",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Mini jogo interatvo",style: GoogleFonts.openSans(fontSize: 14,fontWeight: FontWeight.normal),),
          ],
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container( 
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
              color: Color(0xEE3E8320),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            alignment: AlignmentGeometry.center,
            child: Text("Determine com base no seu conhecimento sobre o Regimento estudantil quais atos são permitidos ou não. ",
              style: GoogleFonts.openSans(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 160,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Cardgame01(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonpassCard(),
                    ButtonpassCard()
                  ],
                )
              ],
            ))
      ], ),
    );
  }
}


//Card de pergunta principal
class Cardgame01 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 525,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 15, 
            spreadRadius: 2,  
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            width: 200,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              children: [
                Text("Reunir os colegas no intervalo para jogar baralho apostando dinheiro ou lanches.",
                style: GoogleFonts.openSans(fontSize: 14,fontWeight: FontWeight.w600),
                ),
                Text("Escolha sua resposta:",style: GoogleFonts.openSans(fontSize: 10,fontWeight: FontWeight.normal)),
                ButtonAlternativa(),
                ButtonAlternativa(),
              ],
            ),
          ),
        ],
      ),
    );
  } 
}

//Botão com alternativas
class ButtonAlternativa extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xF1F1F1F1),
              borderRadius: BorderRadius.all(Radius.circular(4))
            ),
            child: Text("A", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 12, color: Color(0xFF65716A)),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Posso",style: GoogleFonts.openSans(fontSize: 11,fontWeight: FontWeight.w600)),
              Text("Permitido sem restrições",style: GoogleFonts.openSans(fontSize: 10))
            ],
          )
        ],
      );
  }
}

//Botão para passar para o prox card
class ButtonpassCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:50.0),
      child: FloatingActionButton(
        onPressed:()=>{}, 
        backgroundColor: Colors.white,
        child: Icon(Icons.arrow_back),
        ),
    );
  }
}