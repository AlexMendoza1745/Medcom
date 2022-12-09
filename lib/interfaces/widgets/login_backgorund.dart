import 'package:flutter/material.dart';

class login_background extends StatelessWidget {
  final Widget child;
  const login_background({Key? key,  required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Box(),
          SafeArea(
            child: Container(
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 100,
                child: const Image(
                  image: AssetImage('assets/medicamento.png'),
                )),
          ),
          child,
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: Boxdec(),
      child: Stack(
        children: const [
          Positioned(
            child: forma(),
            top: 90,
            left: 30,
          ),
          Positioned(
            child: forma(),
            top: -40,
            left: 30,
          ),
          Positioned(
            child: forma(),
            top: -50,
            right: 30,
          ),
          Positioned(
            child: forma(),
            bottom: -50,
            left: 10,
          ),
          Positioned(
            child: forma(),
            bottom: 120,
            right: 20,
          ),
        ],
      ),
    );
  }

  BoxDecoration Boxdec() {
    return const BoxDecoration(
        gradient: LinearGradient(
      colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1),
      ],
    ));
  }
}

class forma extends StatelessWidget {
  const forma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
