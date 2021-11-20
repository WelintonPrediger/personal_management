import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final GestureTapCallback onTap;
  final String titleButton;

  const MyButton({Key? key, required this.onTap, required this.titleButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
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
                child: InkWell(
                  onTap: onTap,
                  child: Text(titleButton, style: const TextStyle(color: Colors.deepPurple), textAlign: TextAlign.center),
                )
            ),
          ),
        ],
      ),
    );
  }
}
