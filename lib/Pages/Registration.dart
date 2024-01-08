import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _dobController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Validation flag for each field

  bool _isEmailValid = true;
  bool _isPasswordValid = true;
  bool _isContactValid = true;


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
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 350.0,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff99f1e9),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.0),
                // Full Name TextField with validation
                TextField(
                  controller: _fullNameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    prefixIcon: Icon(Icons.person),
                  ),

                ),
                SizedBox(height: 16.0),
                // Email TextField with validation
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    errorText: _isEmailValid ? null : 'Enter a valid email address',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _isEmailValid = _isValidEmail(value);
                    });
                  },
                ),
                SizedBox(height: 16.0),
                // Password TextField with validation
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    errorText: _isPasswordValid ? null : 'Password must be at least 8 characters',
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      _isPasswordValid = value.length >= 8;
                    });
                  },
                ),
                SizedBox(height: 16.0),
                // Contact TextField with validation
                TextField(
                  controller: _contactController,
                  decoration: InputDecoration(
                    labelText: 'Contact',
                    prefixIcon: Icon(Icons.phone),
                    errorText: _isContactValid ? null : 'Enter a valid contact number',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _isContactValid = _isValidContact(value);
                    });
                  },
                ),
                SizedBox(height: 16.0),
                // Gender TextField with validation
                TextField(
                  controller: _genderController,
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    prefixIcon: Icon(Icons.person),
                  ),

                ),
                SizedBox(height: 16.0),
                // Address TextField with validation
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    prefixIcon: Icon(Icons.location_on),
                  ),

                ),
                SizedBox(height: 16.0),
                // Date of Birth TextField with validation
                TextField(
                  controller: _dobController,
                  decoration: InputDecoration(
                    labelText: 'Date of Birth(yyyy-mm-dd)',
                    prefixIcon: Icon(Icons.calendar_today),
                  ),

                ),
                SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () async {
                    // Check if all fields are valid before attempting registration
                    if (
                        _isEmailValid &&
                        _isPasswordValid &&
                        _isContactValid ) {
                      try {
                        // Create user with email and password
                        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );

                        // Store additional user data in Firestore
                        await _firestore.collection('users').doc(userCredential.user?.uid).set({
                          'full_name': _fullNameController.text,
                          'email': _emailController.text,
                          'contact': _contactController.text,
                          'gender': _genderController.text,
                          'address': _addressController.text,
                          'dob': _dobController.text,
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Registration successful!'),
                            duration: Duration(seconds: 1),
                          ),
                        );

                        // Navigate to the login page or any other page after successful registration
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                              (route) => false,
                        );
                      } catch (e) {
                        // Show error message for incomplete or invalid fields
                        print('Error : $e');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please fill in all fields correctly.'),
                          ),
                        );
                      }
                    } else {
                      // Handle registration errors
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Registration failed. Please try again.'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
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

  // Helper method for validating email format
  bool _isValidEmail(String email) {
    String emailRegex = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
    return RegExp(emailRegex).hasMatch(email);
  }

  // Helper method for validating contact number format
  bool _isValidContact(String contact) {
    String contactRegex = r'^\d{10}$';
    return RegExp(contactRegex).hasMatch(contact);
  }
}
