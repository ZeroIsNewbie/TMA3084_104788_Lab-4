import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'About Us',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/about.jpg',
                height: 400.0,
                width: 450.0,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20.0),

              const Text(
                'At HY Pizza, we believe that every great pizza starts with fresh '
                'ingredients. We are committed to serving delicious, high-quality '
                'pizzas made with care, bringing fresh flavours and happiness to '
                'every customer. Our goal is to make every visit a satisfying '
                'and enjoyable experience!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
