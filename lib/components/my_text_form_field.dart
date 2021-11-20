import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {

  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final bool isPassword;

  const MyTextFormField({Key? key, required this.controller, required this.hint, required this.icon, required this.isPassword}) : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {

  bool changeIcon = false;

  @override
  Widget build(BuildContext context) {
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
                blurRadius: 12,
                offset: Offset(-3, -5), // changes position of shadow
              ),
            ],
          ),
          child: TextFormField(
            style: const TextStyle(color: Colors.deepPurpleAccent),
            obscureText: widget.isPassword && !changeIcon,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: const BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide(color: Colors.indigo.shade100, width: 2)),
              hintText: widget.hint,
              hintStyle: const TextStyle(color: Colors.deepPurpleAccent),
              prefixIcon: Icon(widget.icon, color: Colors.deepPurple,),
              suffixIcon: widget.isPassword
                            ? IconButton(
                                icon: changeIcon
                                    ? const Icon(Icons.visibility_off, color: Colors.deepPurple)
                                    : const Icon(Icons.visibility, color: Colors.deepPurple),
                                onPressed: () {
                                  if(changeIcon) {
                                    setState(() {
                                      changeIcon = false;
                                    });
                                  }
                                  else {
                                    setState(() {
                                      changeIcon = true;
                                    });
                                  }
                                },
                              )
                            : null
            ),
            controller: widget.controller,
          )
      ),
    );
  }
}
