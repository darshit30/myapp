import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: const Text("Login Page")),
        body: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
        Image.asset(
        'assets/images/images1.jpg',
          width: 600.0,
          height: 240.0,
          fit: BoxFit.cover,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Form(
                              child: Column(
                            children: <Widget>[

                              const SizedBox(
                                height: 20,
                              ),

                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter  Username",
                                    labelText: "User Name"),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password"),
                              )
                            ],
                          )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              clipBehavior: Clip.antiAlias,
                              onPressed: () {
                                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Homepage()));
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                                //       Navigator.pushNamed(context, "/home");
                              },
                              child: const Text("Sign In"),
                              // color: Colors.red,
                              //textColor: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
