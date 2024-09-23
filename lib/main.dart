import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor:  const Color(0xff00ADC3),
      
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

           Column( 
          children: [
            SizedBox(height: 30),

            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('imagens/ball.png'),
              ),
              SizedBox(width: 12), 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    'Volley',
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'do fim de semana',
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
            
          const SizedBox(height: 100),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
           Padding(padding: const EdgeInsets.only(left: 10),
           child: RotatedBox(
            quarterTurns: 3, 
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                border: Border.all(color: Colors.white, width: 2),
              ),
            padding: const EdgeInsets.symmetric(horizontal: 65),
            child: const Text(
              'TIMES',
              style: TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),
                
              ),
          ),
          ),
           ), 
           


          const Expanded(child: Column(
              children: [
                Times(time: 'Sicranos', sizetime: '3'),
                Times(time: 'Autoconvidados', sizetime: '3',),
                Times(time: 'Ziraldos', sizetime: '4',),
                Times(time: 'Sparrings', sizetime: '5',),
              ]
            ),),
             
          
          ],
          ),
          ],
          ),

          const SizedBox(height: 35),

          ElevatedButton(
              onPressed: () {
            // Ação ao clicar
            },
            style: ElevatedButton.styleFrom( 
              backgroundColor: const Color(0xff00ADC3),// Cor de fundo // Cor do texto
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12), // Padding
              minimumSize: const Size(250, 60),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Bordas arredondadas
              ),
            ),
            child: const Text(
            'Jogo Casado',
            style: TextStyle(
              fontSize: 30,
              color:  Colors.white,
              fontFamily: 'ConcertOne', // Tamanho da fonte
            ),
            ),
          ),
            
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
            // Ação ao clicar
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff2B4A8E), // Cor de fundo // Cor do texto
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 12), // Padding
              minimumSize: const Size(250, 60),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
               side: const BorderSide( // Adiciona a borda branca
                color: Colors.white, // Cor da borda
                width: 2, // Espessura da borda
              ), // Bordas arredondadas
              ),
            ),
            child: const Text(
            'Iniciar',
            style: TextStyle(
              fontSize: 40,
              color:  Colors.white,
              fontFamily: 'ConcertOne', // Tamanho da fonte
            ),
            ),
            ),
              
          ],
          
          ),
          floatingActionButton:  FloatingActionButton(
            onPressed: () {
              // Ação ao clicar
            },
            backgroundColor: const Color(0xff2B4A8E),
            shape: const CircleBorder(),
            child: const Text(
              '+',
            style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: 'ConcertOne'),
            ),
          ),
      ),
      );
  }
}

class Times extends StatelessWidget {
  final String time;
  final String sizetime;

  const Times({
    super.key,
    required this.time,
    required this.sizetime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
      time,
      style: TextStyle(
        fontFamily: 'ConcertOne',
        fontSize: 40,
        color: Colors.yellow[500],
      ),
      ),
      const SizedBox(width: 15),
      Text(
      sizetime,
      style: const TextStyle(
        fontFamily: 'ConcertOne',
        fontSize: 60,
        color: Color(0xff2B4A8E),
        fontWeight: FontWeight.bold,
      ),
    ),
    const RotatedBox(
      quarterTurns: 3, 
      child: Text(
        'Jogadores',
        style: TextStyle(
          fontFamily: 'ConcertOne',
          fontSize: 10,
          color: Color(0xff2B4A8E),
          fontWeight: FontWeight.bold,
          ),
        ),
    ),
    
    ]
      ),
    );
  }
}
