import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // Retains the DEBUG banner seen in the screenshot
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAlignment.start,
            children: [
              // Profile Image with Checkmark Stack
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey.shade200,
                      child: const Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.black54,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              // Divider
              const Divider(thickness: 1, color: Colors.black),
              const SizedBox(height: 16),

              // Name Section
              const Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Diluka',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 20),

              // Email Section
              const Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.email, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'diluka.w@nsbm.ac.lk',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Points Section
              const Text(
                'Points',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.star, size: 20),
                  SizedBox(width: 8),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}