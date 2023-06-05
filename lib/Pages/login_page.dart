import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Column(
        children: [
          Image.asset(
            "assets/images/login.png",
          fit: BoxFit.cover,
          height: 300.0),
          SizedBox(height: 20.0,),
          Text(
            "Welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Username"),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password"),
                  ),
                ),
                SizedBox(height: 20.0,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("Log in"))

              ],
            ),
          )
        ],
      )
    );
  }
}
