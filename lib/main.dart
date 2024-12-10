import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Dart'),
            actions: <Widget>[
        IconButton(
        icon: const Icon(Icons.add_alert),
        tooltip: 'Show Snackbar',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('This is a snackbar')));
        },
      ),
      IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go to the next page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
      ),]
        ),
        body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
          children: //[Image.asset('assets/img1.png', height: 250, width: 500,),
           [Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', height: 500, width: 500,),
             const Column(
               children: <Widget>[
                 Text('The Beautiful Bird'),
               ]
             )
        ],
    ),
      ),
      ),
    );
  }
}