import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _validateMail = false;
  bool _validatePass = false;

  @override
  Widget build(BuildContext context) {
    // final AuthBloc bloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 241, 245, 1),
      body: Column(
        children: [
          const Spacer(flex: 2),
          Container(
            height: 284,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(16, 24, 40, 0.15),
                  blurRadius: 5,
                  offset: Offset(0, 4), // Shadow position
                ),
              ],
              // color: Colors.black,
              border: Border.all(
                width: 0,
                color: Colors.white
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print('object');
                    // return bloc.inEvent.add(OnClickCreate());
                  },
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 10),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Seed",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextField(
                          controller: mailController,
                          autofocus: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your seed',
                            errorText: _validateMail ? 'Incorrect seed' : null,
                            focusedErrorBorder: _validateMail
                                ? const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)))
                                : null,
                            errorBorder: _validateMail
                                ? const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)))
                                : null,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          //keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextField(
                          controller: passController,
                          autofocus: true,
                          decoration: InputDecoration(
                            hintText: 'Enter password',
                            errorText:
                                _validatePass ? 'Incorrect password' : null,
                            focusedErrorBorder: _validatePass
                                ? const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black38),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)))
                                : null,
                            errorBorder: _validatePass
                                ? const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)))
                                : null,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          //keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 75.0, left: 16, right: 16),
            child: GestureDetector(
              onTap: () {
                if (mailController.text.isEmpty &&
                    passController.text.isEmpty) {
                  setState(() {
                    _validatePass = true;
                    _validateMail = true;
                  });
                } else if (mailController.text.isEmpty) {
                  setState(() {
                    _validateMail = true;
                  });
                } else if (passController.text.isEmpty) {
                  setState(() {
                    _validatePass = true;
                  });
                } else {
                  // bloc.inEvent.add(OnClickStart());
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 48,
                  color: Colors.black,
                  child: const Center(
                    child: Text('Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
