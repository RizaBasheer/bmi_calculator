import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double result = 0;
  double h_value = 0;
  double w_value = 0;
  void calculator() {
    h_value = double.parse(height.text);
    w_value = double.parse(weight.text);
    result = w_value / (h_value * h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white70),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: height,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40),
              ),
              hintText: 'Enter the height',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: weight,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: 'Enter the weight',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              calculator();
              setState((){});
            },
            child: Text(
              'Calculate',
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
                backgroundColor: Colors.brown,
                fixedSize: Size(100, 40),
                textStyle:
                    TextStyle(fontSize: 20, fontStyle: FontStyle.normal)),
          ),
          SizedBox(height: 10),
          Text('Your BMI is $result',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 21),
          ),
        ],
      ),
    );
  }
}
