import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _header(),
            _inputField(),
            _forgetPassword(),
            _signUp(context),

          ],
        ),
      ),
    );
  }
}

Widget _header() {
  return Column(
    children: const [
      Text(
        "Welcome Back!",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 16),
      Text(
        "Enter your credentials to login!",
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    ],
  );
}
 _inputField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Username",
          prefixIcon: const Icon(Icons.person),
          fillColor: Colors.purpleAccent.withOpacity(0.1),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          prefixIcon: const Icon(Icons.lock),
          fillColor: Colors.purpleAccent.withOpacity(0.1),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 176, 111, 188),
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    ],
  );
}
_forgetPassword() {
return TextButton(
onPressed: () => {},
child: Text(
"Forget password",
style: TextStyle(color: Colors.purple),
), // Text
); // TextButton
}
_signUp(context) {
return Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text("Don't have an accout ?"),
TextButton(
onPressed: () => {
  Navigator.push(context,MaterialPageRoute(builder:(context)=>SignUpPage()))
},
child: Text(
"Sign Up",
style: TextStyle(color:Colors.purple),
)) // Text // TextButton
],
); // Row
}