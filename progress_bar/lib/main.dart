import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  runApp(const ProgressBar());
}

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  State<ProgressBar> createState() => ProgressBarStatus();
}

class ProgressBarStatus extends State<ProgressBar> {
  // This widget is the root of your application.
  double porcentagem = 0;
  void upload() {
    int numero = Random().nextInt(25);
    setState(() {
      porcentagem += numero / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: upload,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                icon: const Icon(Icons.upload_rounded),
                label: const Text('Upload'),
              ),
              if (porcentagem == 0)
                const Text('Clique para iniciar o upload')
              else if (porcentagem >= 1)
                const Text('Upload completo')
              else
                Text('${(porcentagem * 100).toStringAsFixed(2)} %'),
              LinearProgressIndicator(
                value: porcentagem,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
