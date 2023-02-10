import 'package:flutter/material.dart';

class caloria extends StatelessWidget {
  final String text;
  final String cal;
  const caloria({super.key, required this.text, required this.cal});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 249, 255, 255),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(blurRadius: 0.1)],
            border: Border.all(color: Colors.white54)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text, style: TextStyle(color: Colors.grey, fontSize: 17)),
            Text(
              cal,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
