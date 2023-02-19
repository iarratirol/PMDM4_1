import 'package:flutter/material.dart';

class GetDate extends StatefulWidget {
  const GetDate({super.key});
  @override
  _GetDateState createState() => _GetDateState();
}

class _GetDateState extends State<GetDate> {
  String finalDate = '';

  getCurrentDate() {
    var date = new DateTime.now().toString();

    setState(() {
      finalDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " $finalDate",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              )),
          TextButton(
            onPressed: getCurrentDate,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 242, 238, 238)),
            ),
            child: const Text('Update date'),
          ),
        ],
      ),
    ));
  }
}
