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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor:  const Color(0xff00ADC3),
      
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),


            Row(
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('imagens/ball.png'),
              ),
              const SizedBox(width: 10), 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: const [
                  Text(
                    'Volley',
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'do fim de semana',
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),



            SizedBox(height: 20),
            Times(time: 'Sicranos', sizetime: '3'),
            Times(time: 'Autoconvidados', sizetime: '3',),
            Times(time: 'Ziraldos', sizetime: '4',),
            Times(time: 'Sparrings', sizetime: '5',),

            SizedBox(height: 3),
            ],
          ),

          ElevatedButton(
              onPressed: () {
            // Ação ao clicar
            },
            style: ElevatedButton.styleFrom( 
              backgroundColor: const Color(0xff00ADC3),// Cor de fundo // Cor do texto
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Padding
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Bordas arredondadas
              ),
            ),
            child: const Text(
            'Jogo Casado',
            style: TextStyle(
              fontSize: 18,
              color:  Colors.white, // Tamanho da fonte
            ),
            ),
          ),
            
            ElevatedButton(
              onPressed: () {
            // Ação ao clicar
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff2B4A8E), // Cor de fundo // Cor do texto
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Padding
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
              fontSize: 20,
              color:  Colors.white, // Tamanho da fonte
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
    return Row(
      children: [
        Text(
      time,
      style: TextStyle(
        fontFamily: 'ConcertOne',
        fontSize: 35,
        color: Colors.yellow[500],
      ),
      ),
      SizedBox(width: 5),
      Text(
      sizetime,
      style: const TextStyle(
        fontFamily: 'ConcertOne',
        fontSize: 45,
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
          fontSize: 15,
          color: Color(0xff2B4A8E),
          fontWeight: FontWeight.bold,
          ),
        ),
    ),
    
    ]
    );
  }
}
