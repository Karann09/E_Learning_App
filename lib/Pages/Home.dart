import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.book),
        title: Text("E Learning App"),
        backgroundColor: Colors.deepPurple,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text("Message"),)
          ],
        ),
      ),

      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 100),
        child: Column(
          spacing: 20,
          children: [

            SizedBox(
              height: 40,
              width: 300,
              child: Container(color: Colors.white),
            ),

            Row(
            spacing: 20,
            children: [

            SizedBox(
              height: 150,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                  elevation: 3,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book,
                      color:Colors.pinkAccent,
                      size: 55,
                    ),
                    SizedBox(height: 3),
                    Text(
                      "\nSubjects",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),


                  ],
                ),
              ),
            ),

              SizedBox(
                height: 150,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    elevation: 3,
                    shadowColor: Colors.black26,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.book,
                        color:Colors.pinkAccent,
                        size: 55,
                      ),
                      SizedBox(height: 3),
                      Text(
                        "\nSubjects",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ]),


            Row(
                spacing: 20,
                children: [

                  SizedBox(
                    height: 150,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        elevation: 3,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,
                            color:Colors.pinkAccent,
                            size: 55,
                          ),
                          SizedBox(height: 3),
                          Text(
                            "\nSubjects",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 150,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        elevation: 3,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,
                            color:Colors.pinkAccent,
                            size: 55,
                          ),
                          SizedBox(height: 3),
                          Text(
                            "\nSubjects",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ]),

            Row(
                spacing: 20,
                children: [

                  SizedBox(
                    height: 150,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        elevation: 3,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,
                            color:Colors.pinkAccent,
                            size: 55,
                          ),
                          SizedBox(height: 3),
                          Text(
                            "\nSubjects",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 150,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        elevation: 3,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,
                            color:Colors.pinkAccent,
                            size: 55,
                          ),
                          SizedBox(height: 3),
                          Text(
                            "\nSubjects",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ]),

          ],
        ),
      ),
    );
  }
}
