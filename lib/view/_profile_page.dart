import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/meal_plan.dart';
import 'package:flutter_application_1/utils/utils.dart';
import 'package:flutter_application_1/widget/textfield.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController newpasswordcontroller = TextEditingController();
  TextEditingController retrypasswordcontroller = TextEditingController();
  final GlobalKey<FormState> _myform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 70),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/1-.png'), fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.12,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("images/profile_image.png"),
                          radius: 70,
                        ),
                        Positioned(
                          right: 10,
                          top: 100,
                          child: IconButton(
                            iconSize: 30,
                            icon: Image.asset(
                              'images/Edit.png',
                              fit: BoxFit.contain,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Text(
              'Upload image',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Padding(padding: EdgeInsets.all(3)),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.97,
              child: Form(
                key: _myform,
                child: Column(
                  children: <Widget>[
                    Textfield(
                      HintText: 'Enter your name',
                      remessege: 'Please enter your name',
                      rmessege: 'at least 3 charecter',
                      length: 3,
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Textfield(
                      HintText: 'Enter your surname',
                      remessege: 'Please enter your surname',
                      rmessege: 'at least 3 charecter',
                      length: 3,
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Textfield(
                        HintText: 'username',
                        remessege: 'Please enter your username',
                        rmessege: 'Username is minimum 6 chareter',
                        length: 6),
                    const Padding(padding: EdgeInsets.all(5)),
                    Textfield(
                      HintText: 'Email Address',
                      remessege: 'Plase enter Email',
                      length: 6,
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Textfield(
                      HintText: 'Mobile number',
                      remessege: 'Please Enter mobile number',
                      length: 10,
                      rmessege: 'Mobile number length atlease 10',
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Textfield(
                      HintText: 'Password',
                      remessege: 'Please enter passwors',
                      length: 6,
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: newpasswordcontroller,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(70.0),
                        ),
                        hintText: 'New password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter New password';
                        } else if (value.length > 6) {
                          return 'Password atlest 6 charecter';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: retrypasswordcontroller,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(70.0),
                        ),
                        hintText: 'Retype New password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter new password ';
                        } else if (newpasswordcontroller.value.text !=
                            retrypasswordcontroller.value.text) {
                          return 'Please verfiy retry password';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(25)),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.97,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70))),
                onPressed: () {
                  if (_myform.currentState!.validate()) {
                    Utils.showSnackBar(
                        context, 'Profile page sucessfull submited');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MealPlan()));
                  }
                },
                child: const Text(
                  'Proceed',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
