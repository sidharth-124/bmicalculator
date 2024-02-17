import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value)*10000;
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar( centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Bmi Calculator',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: height,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your Height(cm)',hintStyle: TextStyle(color: Colors.white)
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: weight,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your Weight(kg)',hintStyle:TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              setState(() {
                calculate();
              });
            },
            child: Text('Calculate')
          ),
          Text(result.toString()),
          Text('Result',textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
