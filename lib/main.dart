import 'package:flutter/material.dart';

import 'my_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<String> buttons = [
    'C', 'DEL', '%', '/',
    '9', '8', '7', 'X',
    '6', '5', '4', '-',
    '3', '2', '1', '+',
    '0', '.', 'ANS', '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
              child: Container()
          ),
          Expanded(
            flex: 2,
              child: Container(
                child: Center(
                  child: GridView.builder(
                    itemCount: buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      itemBuilder:(BuildContext context, int index){
                        if (index == 0){
                          return MyButton(buttonText: buttons[index],
                            color: Colors.green,
                            textColor:Colors.white,
                          );
                        }
                        else if (index == 1){
                          return MyButton(buttonText: buttons[index],
                            color: Colors.red,
                            textColor:  Colors.white,
                          );
                        }else {
                          return MyButton(buttonText: buttons[index],
                            color: isOperator(buttons[index]) ? Colors.deepPurple : Colors.deepPurple[50],
                            textColor: isOperator(buttons[index]) ? Colors.white : Colors.deepPurple,
                          );
                        }

                      }),
                ),
              )
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  bool isOperator(String x){
      if (x == '%' || x == '/' || x == '+' || x == 'X' || x == '-' || x == '='){
        return true;
      }
      return false;
  }
}

