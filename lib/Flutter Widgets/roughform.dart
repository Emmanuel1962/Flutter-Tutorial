import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class RoughForm extends StatefulWidget {
  const RoughForm({super.key});

  @override
  State<RoughForm> createState() => _RoughFormState();
}

class _RoughFormState extends State<RoughForm> {
  GlobalKey<FormState> authKey = GlobalKey<FormState>();
  bool showPassword = false;

  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController emailAddressCtrl = TextEditingController();

  @override
  void dispose() {
    usernameCtrl.dispose();
    passwordCtrl.dispose();
  }

  void switchPassword() {
    showPassword = !showPassword;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Form Registration',
          style: TextStyle(fontSize: 30.5, color: Colors.white30),
        ),
        actions: const [
          Icon(Icons.home)
          //  IconButton.filled(onPressed: () {}, icon:Icon(Icons.home) )
        ],
        elevation: 30,
        shadowColor: Colors.blue,
      ),
      body: Container(
          padding: const EdgeInsets.all(30),
          height: size.height,
          width: size.width,
          color: Colors.lightGreen,
          child: Form(
            key: authKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: usernameCtrl,
                    decoration: InputDecoration(
                      label: const Text('Username'),
                      hintText: 'Enter  your Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please fill in your Username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: passwordCtrl,
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      label: const Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          switchPassword();
                        },
                        icon: showPassword
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: emailAddressCtrl,
                    decoration: InputDecoration(
                      label: const Text('E-mail Address'),
                      hintText: 'Enter your E-mail Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      var emailVaild = EmailValidator.validate(value!);
                      if (!emailVaild) {
                        return 'Please fill in your E-mail ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 8,
                    maxLength: 100,
                    decoration: InputDecoration(
                      label: const Text('About your self'),
                      hintText: 'Enter about yourself',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please fill in About Yourself';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
