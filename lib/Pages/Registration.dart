import 'package:e_learning_app/Pages/Login.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _LoginState();
}

class _LoginState extends State<Registration> {

  final TextEditingController name = TextEditingController();
  final TextEditingController surename = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool eye = true;
  final List<String> ClassList = ["1","2","3","4","5","6","7"];
  String ? Class;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Image.asset("assets/images/Registration.png",height: 150,width: 250),

            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("  Create Account,",style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
                  Text("    Sign up to get started!",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey.shade600)),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    TextField(
                      controller: name,
                      decoration: InputDecoration(
                        labelText: "Name",
                        // prefixIcon: Icon(Icons.person),
                        hint: Text("Enter First Name"),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    TextField(
                      controller: surename,
                      decoration: InputDecoration(
                        labelText: "Surename",
                        // prefixIcon: Icon(Icons.person),
                        hint: Text("Enter Last Name"),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    Container(
                      alignment: Alignment(0, 0),
                      width: 520,
                      // alignment:Alignment.bottomLeft,
                      child: DropdownButtonFormField<String>(
                        hint: Text("Select Class"),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        items: ClassList.map((exp) {
                          return DropdownMenuItem<String>(
                            value: exp,
                            child: Text(exp),
                          );
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            Class = val;
                          });
                        },
                      ),
                    ),

                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        hint: Text("Enter Password"),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent.shade200,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 138,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                elevation: 5,                            // Shadow
              ),
              child: Text('Register', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            ),

            const SizedBox(height: 20),
            TextButton(
                style: ButtonStyle(
                  overlayColor: .all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a member?"),
                    Text("  Sign up",style: TextStyle(color: Colors.deepPurpleAccent.shade200,fontSize: 15))
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}
