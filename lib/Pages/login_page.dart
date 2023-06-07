import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login1.png",
              fit: BoxFit.cover,
              height: 300.0),
              const SizedBox(height: 20.0,),
              const Text(
                "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Username"),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text("Password"),
                      ),
                    ),
                    const SizedBox(height: 40.0,),
                    ElevatedButton(
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        onPressed: (){
                          Navigator.pushNamed(context, "/home");

                        },
                        child: const Text("Log in"))

                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
