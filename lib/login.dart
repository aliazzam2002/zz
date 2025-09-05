import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController userNamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phcontroller = TextEditingController();
  final TextEditingController passWordcontroller = TextEditingController();
  final GlobalKey<FormState> form1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Form(
        key: form1,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: userNamecontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field Is Requiered';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelText: "Username",
                  ),
                ),
                SizedBox(height: 24),

                TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field Is Requiered';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelText: "Email",
                  ),
                ),
                SizedBox(height: 24),

                TextFormField(
                  controller: phcontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field Is Requiered';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelText: "Phone Number",
                  ),
                ),
                SizedBox(height: 24),
                TextFormField(
                  controller: passWordcontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field Is Requiered';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelText: "Password",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (form1.currentState!.validate()) {}
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
