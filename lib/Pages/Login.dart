import 'package:e_learning_app/Components/TextF.dart';
import 'package:e_learning_app/Pages/Home.dart';
import 'package:e_learning_app/Pages/Registration.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Image.asset("assets/images/Login.png",height: 150,width: 250),

            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("  Welcome,",style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
                Text("    Sign in to continue !",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey.shade600)),
                ],
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 10,
                children: [
                TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  hint: Text("Enter Username"),
                  border: OutlineInputBorder(),
                ),
              ),

              TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      eye =! eye;
                    });
                  }, icon: Icon(eye ? Icons.visibility_off : Icons.remove_red_eye)),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                obscureText: eye,
                obscuringCharacter: "*",
              ),
              ]
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent.shade200,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 150,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                elevation: 5,                            // Shadow
                ),
              child: Text('Login', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            ),

            const SizedBox(height: 20),
            TextButton(
                style: ButtonStyle(
                  overlayColor: .all(Colors.transparent),
                ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  Text("  Register",style: TextStyle(color: Colors.deepPurpleAccent.shade200,fontSize: 15))
                ],
              )
            ),

          ],
        ),
      ),
    );
  }
}
