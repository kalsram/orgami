import 'package:flutter/material.dart';
import 'package:orgami/login.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool acceptTerms = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mobilenoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            const Text('Full name',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                Icons.person,
              )),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            const Text('Address',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 2),
            TextFormField(
              controller: addressController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter address';
                }

                return null;
              },
            ),
            const SizedBox(height: 30),
            const Text('Mobile Number',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 2),
            TextFormField(
              controller: mobilenoController,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter mobileno';
                }

                return null;
              },
            ),
            SizedBox(height: 150),
            Row(
              children: [
                Checkbox(
                  value: acceptTerms,
                  onChanged: (value) {
                    setState(() {
                      acceptTerms = value ?? false;
                    });
                  },
                ),
                RichText(
                  text: const TextSpan(
                    text: 'I agree to all the ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: ' Terms and condition',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: ' Privacy policy ',
                          style: TextStyle(
                            color: Colors.orange,
                          )),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true &&
                      acceptTerms) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Please select the terms and condition'),
                      duration: Duration(seconds: 2),
                    ));
                  }
                },
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
