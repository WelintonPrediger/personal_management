import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_personal_management/components/my_button.dart';
import 'package:project_personal_management/components/my_text_form_field.dart';
import 'package:project_personal_management/controllers/authentication_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _authenticationController = Get.put(AuthenticationController());

    _componentTextFormField() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.indigo.shade50,
                Colors.white
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.indigo.shade100,
                spreadRadius: 4,
                blurRadius: 5,
                offset: const Offset(2, 2), // changes position of shadow
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(-3, -5), // changes position of shadow
              ),
            ],
        ),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: const BorderSide(color: Colors.transparent)),
                  hintText: 'Usuário',
                  hintStyle: const TextStyle(color: Colors.black38),
                  prefixIcon: const Icon(Icons.person, color: Colors.deepPurple,)
              ),
              controller: _authenticationController.usernameController.value,
            )
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                const Text('Bem vindo ao App Gestão pessoal', textAlign: TextAlign.center, style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.w600, fontSize: 16)),
                const SizedBox(height: 50.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.shade100,
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: const Offset(2, 2), // changes position of shadow
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(-3, -5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 100,
                    backgroundImage: NetworkImage('https://img1.gratispng.com/20180623/vr/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c3c1e473.3568135015297806757942.jpg'),
                  ),
                ),
                const SizedBox(height: 50),
                MyTextFormField(controller: _authenticationController.usernameController.value, hint: 'Usuário', icon: Icons.person, isPassword: false),
                const SizedBox(height: 15.0),
                MyTextFormField(controller: _authenticationController.passwordController.value, hint: 'Senha', icon: Icons.lock, isPassword: true,),
                const SizedBox(height: 20),
                MaterialButton(onPressed: () {}, child: const Text('Esqueceu a senha?', style: TextStyle(color: Colors.deepPurple),),),
                const SizedBox(height: 20),
                MyButton(onTap: () {}, titleButton: 'Entrar'),
                const SizedBox(height: 15),
                MyButton(onTap: () {}, titleButton: 'Cadastrar-se agora'),
                const SizedBox(height: 50),
              ],
            ),
          ),
        )
      ),
    );
  }
}
