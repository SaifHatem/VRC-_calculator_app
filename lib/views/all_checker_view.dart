import 'package:flutter/material.dart';

import 'package:vrc_app/views/vrc_view.dart';

class AllCheckers extends StatelessWidget {
  const AllCheckers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.count(
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const VRCView();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 85, 170, 212),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      "VRC Algorithm",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/lrc.json'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    "LRC Algorithm",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
