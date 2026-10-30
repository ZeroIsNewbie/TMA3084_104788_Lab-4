
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address
            Row(
              children: [
                Image.asset(
                  'assets/images/address.jpg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Text(
                    '888, Happy Street, Kuching, Sarawak',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Phone
            Row(
              children: [
                Image.asset(
                  'assets/images/phone.jpg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Text(
                    '+60 82 888123',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Email
            Row(
              children: [
                Image.asset(
                  'assets/images/email.jpg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Text(
                    'service@hypizza.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
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
