import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NepStock',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        // ... (unchanged)
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Container(
            width: 1000,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.grey,
            ),
            child: Text(
              'Index',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
          ),
          // 3x7 Table with random data
          Container(
            padding: EdgeInsets.all(15.0),
            child: Table(
              border: TableBorder.all(color: Colors.black),
              children: List.generate(3, (indexRow) {
                return TableRow(
                  children: List.generate(7, (indexColumn) {
                    // Generate random data (you can replace this with actual data)
                    String randomData = Random().nextInt(100).toString();
                    return TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          randomData,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    );
                  }),
                );
              }),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Gainer',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Top Loser',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

// ... (unchanged)
}


/*
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Registration.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NepStock',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 300.0,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff99f1e9),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () async{
                    try {
                      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
                        email: _usernameController.text, // Assuming email is used as the username
                        password: _passwordController.text,
                      );

                      // If login is successful, navigate to the home page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } catch (e) {
                      // Show an error message
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Login Failed'),
                            content: Text('Please check your credentials and try again.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the dialog box
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    };
                  },

                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    // Navigate to the registration page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                  },
                  child: Text(
                    'New user? Register Here',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 */