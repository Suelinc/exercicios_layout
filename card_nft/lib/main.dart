import 'package:flutter/material.dart';

void main() {
  runApp(const CardNFT());
}

class CardNFT extends StatefulWidget {
  const CardNFT({Key? key}) : super(key: key);

  @override
  State<CardNFT> createState() => CardNFTState();
}

class CardNFTState extends State<CardNFT> {
  get icon => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Card(
                    color: Colors.transparent,
                    elevation: 5.0,
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.network(
                              'https://camo.githubusercontent.com/dc30ec513e394f4863cdd26fcf702fb5519280a1f2ed33736771477e64d005dc/68747470733a2f2f692e696d6775722e636f6d2f773339717a61712e706e67',
                              scale: 0.6,
                            ),
                          ),
                          const SizedBox(
                            height: 13.0,
                          ),
                          const Text(
                            'Equilibrium 3429',
                            style: TextStyle(
                                color: Colors.cyanAccent,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 13.0,
                          ),
                          const Text(
                            'Nossa coleção Equilibrium promove calma e balanço',
                            style: TextStyle(
                                color: Color.fromARGB(255, 74, 145, 202),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 13.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '0,041 ETH',
                                style: TextStyle(
                                    color: Colors.cyanAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.access_time_filled,
                                      color: Color.fromRGBO(33, 150, 243, 1)),
                                  SizedBox(width: 3.0),
                                  Text(
                                    'restam 3 dias',
                                    style: TextStyle(
                                      color: Color.fromRGBO(33, 150, 243, 1),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: Image.network(
                                  'https://avatars.githubusercontent.com/u/104871153?v=4',
                                  height: 32.0,
                                  width: 32.0,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Text('Criado por',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 74, 145, 202))),
                              const Text(
                                '  Sueli Calado',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                  ))
                ],
              ),
            )));
  }
}
