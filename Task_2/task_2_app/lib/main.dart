import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MAIN APP

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// HOME SCREEN

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Center(child: ProfileCard()),
    );
  }
}

//   PROFILE CARD

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileImage(),
          SizedBox(height: 15),
          ProfileName(),
          SizedBox(height: 5),
          ProfileRole(),
          SizedBox(height: 15),
          SocialIcons(),
        ],
      ),
    );
  }
}

// PROFILE IMAGE

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 45,
      backgroundImage: NetworkImage("assets/profile.jpg"),
    );
  }
}

// PROFILE NAME

class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Afan Riaz",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

// PROFILE ROLE
class ProfileRole extends StatelessWidget {
  const ProfileRole({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Flutter Intern",
      style: TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}

// SOCIAL ICONS

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.facebook, color: Colors.blue),
          SizedBox(width: 15),
          Icon(Icons.camera_alt, color: Colors.purple),
          SizedBox(width: 15),
          Icon(Icons.email, color: Colors.red),
        ],
      ),
    );
  }
}
