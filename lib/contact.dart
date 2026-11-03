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
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Address Card
            Card(
              elevation: 5,
              margin: const EdgeInsets.only(bottom: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/address.jpg',
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        '888, Happy Street, Kuching, Sarawak',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Phone Card
            Card(
              elevation: 5,
              margin: const EdgeInsets.only(bottom: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/phone.jpg',
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        '+60 82 888123',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Email Card
            Card(
              elevation: 5,
              margin: const EdgeInsets.only(bottom: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/email.jpg',
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'service@jl3pizza.com',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
