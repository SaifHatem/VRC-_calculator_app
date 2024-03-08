import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vrc_app/views/all_checker_view.dart';

class HomewView extends StatelessWidget {
  const HomewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Data Checker',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'BreeSerif',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/Animation - 1709495825883.json'),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) {
                    return const AllCheckers();
                  }),
                ),
              );
            },
            child: const Text(
              'Start sending messege',
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontFamily: 'BreeSerif'),
            ),
          )
        ],
      ),
    );
  }
}
