import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../constants/constants.dart';
import '../widgets/nav_bar.dart';
import '../widgets/sign_form_textfield.dart';
import '../widgets/social_elevated_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Constants.loginPageImage,
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                ],
              ),
              Text(
                Constants.loginWelcome,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Constants.blackColor),
              ),
              const SizedBox(height: 10),
              Text(
                Constants.loginlogin,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Constants.greyColor,
                    ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, bottom: 5, right: 25, top: 5),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      SignFormTextField(
                        icon: const Icon(Icons.person,
                            color: Constants.mainColor),
                        name: _username,
                        enableSuggestions: true,
                        isPassword: false,
                        textInputType: TextInputType.text,
                        validator: RequiredValidator(
                            errorText: Constants.loginErroxtext),
                        hintText: Constants.loginUsertext,
                      ),
                      SignFormTextField(
                        icon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Constants.mainColor,
                        ),
                        hintText: Constants.loginPasswordtext,
                        name: _password,
                        enableSuggestions: false,
                        isPassword: true,
                        textInputType: TextInputType.number,
                        validator: MultiValidator([
                          MaxLengthValidator(10,
                              errorText: Constants.loginUsercharackter),
                          RequiredValidator(
                              errorText: Constants.loginUserenterpassword),
                          MinLengthValidator(4,
                              errorText: Constants.loginUsercharacktermin),
                        ]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            child: const Text(Constants.loginPasswordtextnot),
                            onPressed: () {
                              if (_username.text.isNotEmpty &&
                                  _password.text.isNotEmpty) {
                                firebaseCreate(
                                    email: _username.text,
                                    password: _password.text,
                                    context: context);
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text(Constants.loginAlert),
                                      content: const Text(
                                          "Lütfen Email ve Şifre Giriniz"),
                                      actions: <Widget>[
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Constants.mainColor,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          child: const Text(
                                              Constants.loginUserokey),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                          )
                        ],
                      ),
                      LoginButton(
                          formkey: _formkey,
                          username: _username,
                          password: _password),
                      const SizedBox(height: 20),
                      _connectUsingText(context),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ElevatedButtonSocial(
                              color: Colors.white,
                              imagePath: Constants.socialMediaIconSlack),
                          ElevatedButtonSocial(
                            color: Colors.white,
                            imagePath: Constants.socialMediaIconOUA,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center _connectUsingText(BuildContext context) {
    return Center(
        child: Text(
      Constants.loginUserother,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: Constants.greyColor),
    ));
  }

  firebaseCreate(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      await auth
          .createUserWithEmailAndPassword(
              email: _username.text, password: _password.text)
          .then((value) {
        log("Kayıt  başarılı");
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Kayıt Başarılı  Lütfen Giriş Yapınız."),
              actions: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(Constants.loginUserokey),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(Constants.loginAlert),
            content: const Text("Bu Kullanıcı kayıtlı"),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(Constants.loginUserokey),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required GlobalKey<FormState> formkey,
    required TextEditingController username,
    required TextEditingController password,
  })  : _formkey = formkey,
        _username = username,
        _password = password,
        super(key: key);

  final GlobalKey<FormState> _formkey;
  final TextEditingController _username;
  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Constants.mainColor,
            fixedSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: const Text(
          Constants.loginUser,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () async {
          if (_formkey.currentState!.validate() == true) {
            _formkey.currentState?.save();

            firebaseLogin(
                email: _username.text,
                password: _password.text,
                context: context);
          }
        },
      ),
    );
  }

  firebaseLogin(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      await auth
          .signInWithEmailAndPassword(
              email: _username.text, password: _password.text)
          .then((value) {
        log("Giriş başarılı");
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: ((context) => const NavBar())));
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(Constants.loginAlert),
            content: const Text(Constants.loginUserincorrect),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(Constants.loginUserokey),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}
