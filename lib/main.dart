import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String output = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Calculator",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Container(
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    output == "" ? 0.toString() : output,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn(
                    text: "C",
                    onTap: () {
                      setState(() {
                        output = "";
                      });
                    },
                    btnColor: Colors.orange,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "->",
                    onTap: () {
                      setState(() {
                        output.substring(0, output.length - 1);
                      });
                    },
                    btnColor: Colors.orange,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "%",
                    onTap: () {
                      setState(() {
                        if (output[output.length - 1] == '%' ||
                            output[output.length - 1] == '+' ||
                            output[output.length - 1] == '-' ||
                            output[output.length - 1] == 'x' ||
                            output[output.length - 1] == '/') {
                        } else {
                          output += "%";
                        }
                      });
                    },
                    btnColor: Colors.orange,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "/",
                    onTap: () {
                      setState(() {
                        if (output[output.length - 1] == '%' ||
                            output[output.length - 1] == '+' ||
                            output[output.length - 1] == '-' ||
                            output[output.length - 1] == 'x' ||
                            output[output.length - 1] == '/') {
                        } else {
                          output += "/";
                        }
                      });
                    },
                    btnColor: Colors.orange,
                    textColor: Colors.black,
                    btnWidth: 80),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn(
                    text: "7",
                    onTap: () {
                      setState(() {
                        output += "7";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "8",
                    onTap: () {
                      setState(() {
                        output += "8";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "9",
                    onTap: () {
                      setState(() {
                        output += "9";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                  text: "x",
                   onTap: (){
                    setState(() {
                      if (output[output.length-1]=='%'||
                          output[output.length-1]=='+'||
                          output[output.length-1]=='-'||
                          output[output.length-1]=='x'||
                          output[output.length-1]=='/') {
                        
                      }else{
                        output+="x";
                      }
                    });
                   },
                    btnColor: Colors.orange, 
                    textColor: Colors.black,
                     btnWidth: 80
                     ),
                   ],
                 ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn(
                    text: "4",
                    onTap: () {
                      setState(() {
                        output += "4";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "5",
                    onTap: () {
                      setState(() {
                        output += "5";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "6",
                    onTap: () {
                      setState(() {
                        output += "6";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                  text: "-",
                   onTap: (){
                    setState(() {
                      if (output[output.length-1]=='%'||
                          output[output.length-1]=='+'||
                          output[output.length-1]=='-'||
                          output[output.length-1]=='x'||
                          output[output.length-1]=='/') {
                        
                      }else{
                        output+="-";
                      }
                    });
                   },
                    btnColor: Colors.orange, 
                    textColor: Colors.black,
                     btnWidth: 80
                     ),
                   ],
               ),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn(
                    text: "1",
                    onTap: () {
                      setState(() {
                        output += "1";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "2",
                    onTap: () {
                      setState(() {
                        output += "2";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: "3",
                    onTap: () {
                      setState(() {
                        output += "3";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                  text: "+",
                   onTap: (){
                    setState(() {
                      if (output[output.length-1]=='%'||
                          output[output.length-1]=='+'||
                          output[output.length-1]=='-'||
                          output[output.length-1]=='x'||
                          output[output.length-1]=='/') {
                        
                      }else{
                        output+="+";
                      }
                    });
                   },
                    btnColor: Colors.orange, 
                    textColor: Colors.black,
                     btnWidth: 80
                     ),
                   ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn(
                    text: "0",
                    onTap: () {
                      setState(() {
                        output += "0";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                    text: ".",
                    onTap: () {
                      setState(() {
                        output += ".";
                      });
                    },
                    btnColor: Colors.white,
                    textColor: Colors.black,
                    btnWidth: 80),
                btn(
                  text: "=",
                   onTap: (){
                      try {
                          output = output.replaceAll('x', '*');
                          Parser p = Parser();
                          Expression exp = p.parse(output);
                          String result = exp
                              .evaluate(
                            EvaluationType.REAL,
                            ContextModel(),
                          )
                              .toString();
                          setState(() {
                            output = result;
                          });
                        } catch (e) {
                          print(e.toString());
                          setState(() {
                            e.toString() ==
                                'RangeError (index): Invalid value: Valid value range is empty: -1'
                                ? output = 'Syntax Error'
                                : '';
                          });
                        }


                   },
                    btnColor: Colors.orange, 
                    textColor: Colors.black,
                     btnWidth: 183
                     ),
                   ],
               ),
          ],
        ),
      ),
    );
  }
}

Widget btn({
  required String text,
  required Function() onTap,
  required Color btnColor,
  required Color textColor,
  required double btnWidth,
}) {
  return AnimatedButton(
    onPressed: onTap,
    color: btnColor,
    width: btnWidth,
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
