import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/icon_button.dart';
import 'package:flutter_application_1/widget/show_cal.dart';
import 'package:intl/intl.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({super.key});

  @override
  State<MealPlan> createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 13, 31, 134),
                    Colors.blue,
                  ], begin: Alignment.topLeft),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(40, 30),
                      bottomRight: Radius.elliptical(40, 30))),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    iconSize: 40,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Meal plan',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 249, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(blurRadius: 0.1)],
                    border: Border.all(color: Colors.white54)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          'Sunday',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                    Text(
                      DateFormat('dd-MM-yyyy').format(DateTime.now()),
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                caloria(text: 'Daily Total', cal: '2639'),
                caloria(text: 'Daily Calories \nBurned', cal: '800'),
                caloria(text: 'Daily Calories\nLeft', cal: '1839'),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ICon_meal(
              text: 'Breakfast',
              Ttext: '7:00am',
              ctext: '350 Cal',
              etext: '● Milk\n● Smokey bacon\n● grilled tomato',
            ),
            const Padding(padding: EdgeInsets.all(9)),
            ICon_meal(
              text: 'Morning snack',
              Ttext: '10:00am',
              ctext: '150 Cal',
              etext: '● Oatmeal\n● Chia seeds\n● Berries',
            ),
            const Padding(padding: EdgeInsets.all(9)),
            ICon_meal(
                text: 'Luch',
                Ttext: '12:00am',
                ctext: '480 Cal',
                etext: '● Pizaa\n ● Carroats\n ● iced tea'),
            const Padding(padding: EdgeInsets.all(9)),
            ICon_meal(
                text: 'Afternoon snack',
                Ttext: '04:00am',
                ctext: '150 Cal',
                etext: '● Edamame\n● Veggies\n● Plain Yogurt'),
            const Padding(padding: EdgeInsets.all(9)),
            ICon_meal(
                text: 'Dinner',
                Ttext: '07:00pm',
                ctext: '280 Cal',
                etext: '● Oatmeal\n● Chia seeds\n● Berries'),
            const Padding(padding: EdgeInsets.all(9)),
            ICon_meal(
                text: 'Night snack',
                Ttext: '10:00pm',
                ctext: '574 Cal',
                etext: '● Edamame\n● Veggies\n● Plain Yogurt'),
            const Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
