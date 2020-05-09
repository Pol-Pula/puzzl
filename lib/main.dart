import 'package:flutter/material.dart';

void main() {
  runApp(Puzzl());
}

class Puzzl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PuzzlPage(),
    );
  }
}

class PuzzlPage extends StatefulWidget {
  @override
  _PuzzlPageState createState() => _PuzzlPageState();
}

class _PuzzlPageState extends State<PuzzlPage> {
  double size;
  List<int> numbers = [1,2,3,4,5,6,7,8,9];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSize();
  }

  void initSize() async {
    await Future(() {});
    setState(() {
      size = MediaQuery.of(context).size.width;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: size ?? 0,
            height: size ?? 0,
            color: Colors.yellow,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Number(
                    size: size / 3,
                    number: 0,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Number(
                    size: size / 3,
                    number: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Number extends StatelessWidget {
  final double size;
  final int number;

  const Number({Key key, this.size, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all()
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
