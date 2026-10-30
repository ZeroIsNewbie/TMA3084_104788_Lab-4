import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'HY Pizza',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Pizza shop image
            Image.asset(
              'assets/images/pizza.jpg',
              height: 250.0,
              width: 300.0,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 25.0),

            // About Us button
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'menu');
              },
              child: const Text(
                'Pizza Menu',
                style: TextStyle(fontSize: 18.0, color: Colors.deepOrange),
              ),
            ),

            const SizedBox(height: 10.0),

            // Contact Us button
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'about');
              },
              child: const Text(
                'About Us',
                style: TextStyle(fontSize: 18.0, color: Colors.deepOrange),
              ),
            ),

            const SizedBox(height: 10.0),

            // About Us button
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'contact');
              },
              child: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 18.0, color: Colors.deepOrange),
              ),
            ),

            const SizedBox(height: 30.0),

            // Social media icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'twitter');
                  },
                  child: Image.asset(
                    'assets/images/twitter.jpg',
                    height: 35.0,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(width: 20.0),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'facebook');
                  },
                  child: Image.asset(
                    'assets/images/facebook.png',
                    height: 35.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
