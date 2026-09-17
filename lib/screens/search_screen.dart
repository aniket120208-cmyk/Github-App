import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1117),
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        titleSpacing: 0,
        title: const TextField(
          autofocus: true,
          style: TextStyle(color: Colors.white, fontSize: 18),
          cursorColor: Color(0xFF58A6FF),
          decoration: InputDecoration(
            hintText: 'Search GitHub',
            hintStyle: TextStyle(
              color: Color(0xFF8B949E),
              fontSize: 18,
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF30363D)),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF30363D)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF58A6FF)),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Color(0xFF58A6FF)),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Find your stuff.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Search all of GitHub for People,\nRepositories, Organizations, Issues, and\nPull Requests.',
                style: TextStyle(
                  color: Color(0xFF8B949E),
                  fontSize: 16,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}