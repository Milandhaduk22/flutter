import 'package:flutter/material.dart';

class ICon_meal extends StatelessWidget {
  final String text;
  final String Ttext;
  final String ctext;
  final String etext;

  const ICon_meal(
      {super.key,
      required this.text,
      required this.Ttext,
      required this.ctext,
      required this.etext});

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 249, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(blurRadius: 0.1)],
          border: Border.all(color: Colors.white54)),
      child: ExpansionTile(
          trailing: Image.asset(
            'images/images.png',
            fit: BoxFit.fill,
          ),
          title: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
                selectionColor: Colors.blueGrey,
              ),
              Text(
                ' (7:00am)',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          ),
          subtitle: const Padding(
            padding: EdgeInsets.all(2),
            child: Text(
              '(350 Cal)',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          children: [
            SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      '● Milk\n● Smokey bacon\n● grilled tomato',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ]),
    ));
  }
}
