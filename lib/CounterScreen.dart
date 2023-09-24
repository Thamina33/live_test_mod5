import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void _incrementCount() {
    setState(() {
      count++;
      if (count >= 5) {
        _showDialog();
      }
    });
  }

  void _decrementCount() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Button pressed $count times."),
          actions: [
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Count:",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCount,
                  child: const Text("+" , style: TextStyle(
                    fontSize: 24

                  ),),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _decrementCount,
                  child: const Text("-",style: TextStyle(
                      fontSize: 24
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
