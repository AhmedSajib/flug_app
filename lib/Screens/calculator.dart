import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String input = "", value = "", resultFinal = "";

  int value1 = 0,
      value2 = 0,
      result = 0,
      pressequal = 0,
      presskey = 0,
      oparetor = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(
              0xFFE56100,
            ),
            title: Text(
              "Calculator",
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          input,
                          style: const TextStyle(fontSize: 44),
                        ),
                        Text(
                          resultFinal,
                          style:const  TextStyle(fontSize: 44),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // 7 8 9 +
 Expanded(
   child: Row(
   children: [
   Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 7");
                            input = input + "7";
                            value = value + "7";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "7",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFE56100,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
   Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 8");
                            input = input + "8";
                            value = value + "8";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "8",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFEF6C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 9");
                            input = input + "9";
                            value = value + "9";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "9",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFF57C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
    Expanded(
     child: InkWell(
     onTap: () {
       setState(() {
         if (pressequal == 1 && value2 != null) {
           input = "";
            value = '';
            oparetor = 0;
             pressequal = 0;
             resultFinal = '';
       }

           if (presskey == 1 && oparetor == 0) {
               input = input + "+";
             value1 = int.parse(value);
             oparetor = oparetor + 1;
             value = "";
     }
      });
         },
           child: Container(
           child: const Text(
              "+",
            style: TextStyle(
             fontSize: 40,
           color: Colors.white,
         ),
     ),
     color: const Color(
        0xFFFB8C00,
       ),
       alignment: Alignment.center,
       ),
         ),
           ),
             ],
                ),
                 ),
              // 4 5 6 -
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 4");
                            input = input + "4";
                            value = value + "4";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "4",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFFB8C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 5");
                            input = input + "5";
                            value = value + "5";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "5",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFF57C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 6");
                            input = input + "6";
                            value = value + "6";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "6",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFEF6C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          "-",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        color: const Color(
                          0xFFE56100,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              //  1 2 3 *
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            print("press 1");
                            input = input + "1";
                            value = value + "1";
                            print("input is $input");
                            print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "1",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFE56100,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 1");
                            input = input + "2";
                            value = value + "2";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "2",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFEF6C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 3");
                            input = input + "3";
                            value = value + "3";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "3",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFF57C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          "*",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        color: const Color(
                          0xFFFB8C00,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              // 0 c =
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            presskey = 1;
                            // print("press 1");
                            input = input + "0";
                            value = value + "0";
                            // print("input is $input");
                            // print("value is $value");
                          });
                        },
                        child: Container(
                          child: const Text(
                            "0",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFFB8C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          "C",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                        color: const Color(
                          0xFFF57C00,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pressequal = 1;
                            value2 = int.parse(value);
                            result = value1 + value2;
                            resultFinal = "=" + result.toString();
                          });
                        },
                        child: Container(
                          child: const Text(
                            "=",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          color: const Color(
                            0xFFEF6C00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: const Text(
                          "/",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        color: const Color(
                          0xFFE56100,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
