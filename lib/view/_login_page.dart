import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/utils.dart';
import 'package:flutter_application_1/view/_profile_page.dart';
import 'package:flutter_application_1/view_models/goole_sign.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  FocusNode emailFocusnode = FocusNode();
  FocusNode passwordFocusnode = FocusNode();
  final GlobalKey<FormState> _myform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/1-.png'), fit: BoxFit.fill),
              ),
              child: Image.asset('images/logo nutriapptech.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
            ),
            Form(
              key: _myform,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    focusNode: emailFocusnode,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(70.0),
                      ),
                      hintText: 'User name/Email',
                    ),
                    validator: (value) {
                      if (value != 'milandhaduk2002@gmail.com') {
                        return 'Your account is not created';
                      } else if (value!.isEmpty) {
                        return 'Please Enter valid email';
                      }
                      return null;
                    },
                  ),
                  const Padding(padding: EdgeInsets.all(7)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                  ),
                  TextFormField(
                    focusNode: passwordFocusnode,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(70.0),
                      ),
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      if (value != 'milan@987') {
                        return 'password not valid';
                      } else if (value!.isEmpty) {
                        return 'Please enter valid password';
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70),
                        ),
                      ),
                      onPressed: () {
                        if (_myform.currentState!.validate()) {
                          Fluttertoast.showToast(msg: 'Login succusfully');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        }
                      },
                      child: (const Text(
                        'Login',
                        style: TextStyle(fontSize: 30),
                      )),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                  Row(children: <Widget>[
                    const Expanded(
                        child: Divider(
                      indent: 20,
                    )),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.grey[400], fontSize: 20),
                    ),
                    const Expanded(
                      child: Divider(
                        endIndent: 20,
                      ),
                    ),
                  ]),
                  const Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    height: 70,
                    width: 345,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        final provider =
                            Provider.of<GooglesignIn>(context, listen: false);
                        provider.gooleLogin();
                      },
                      icon: Image.asset(
                        'images/google.png',
                        height: 35,
                        width: 30,
                        fit: BoxFit.contain,
                      ),
                      label: const Text(
                        'Sign in with Google',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(7)),
                  SizedBox(
                    height: 70,
                    width: 345,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Utils.showSnackBar(
                            context, 'Please create account with google');
                      },
                      icon: Image.asset(
                        'images/Microsoft.png',
                        height: 35,
                        width: 30,
                        fit: BoxFit.contain,
                      ),
                      label: const Text(
                        'Sign in with Microsoft',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
