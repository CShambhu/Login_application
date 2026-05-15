import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // Future<void> onSubmit(BuildContext context) async {

  //   final pref = await SharedPreferences.getInstance();

  //   await pref.setString("username", usernameController.text);
  //   await pref.setString("password", passwordController.text);

  //   ScaffoldMessenger.of(
  //     context,
  //   ).showSnackBar(SnackBar(content: Text("Registered Successfully")));

  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginScreen()),
  //   );
  // }

  bool _isHidden = true;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            // color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.person, size: 80, color: Colors.white),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "FORM VALIDATION",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "enter your email",
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter email";
                          }
                          if (!value.contains("@")) {
                            return "invalid email";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        obscureText: _isHidden,
                        controller: passwordController,

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter password";
                          }
                          if (value.length < 7) {
                            return "password length should be 7";
                          } else {
                            return null;
                          }
                        },

                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () => setState(() {
                              _isHidden = !_isHidden;
                            }),
                            icon: _isHidden
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ),
                          hintText: "enter your password",
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: phoneController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter phone";
                          }
                          if (value.length != 10) {
                            return "invalid phone";
                          }
                          if (double.tryParse(value) == null) {
                            return "Please enter a valid number";
                          } else {
                            return null;
                          }
                        },

                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),

                          hintText: "enter your phone number",
                          labelText: "Phone Number",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // minimumSize: Size(220, 55),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Form Submitted Successfully"),
                            ),
                          );
                        }
                      },

                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),

                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
