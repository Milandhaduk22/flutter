import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/_login_page.dart';
import 'package:flutter_application_1/View/meal_plan.dart';
import 'package:flutter_application_1/model/_routes.dart';
import 'package:flutter_application_1/view/_home_error.dart';
import 'package:flutter_application_1/view/_profile_page.dart';

class Routs {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutsName.login:
        return MaterialPageRoute(builder: (BuildContext context) => LogIn());
      case RoutsName.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) => ProfilePage());
      case RoutsName.home:
        return MaterialPageRoute(builder: (BuildContext context) => Homepage());

      case RoutsName.meal:
        return MaterialPageRoute(builder: (BuildContext context) => MealPlan());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route avalible'),
            ),
          );
        });
    }
  }
}
