import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

class CopilotScreen extends StatelessWidget {
  const CopilotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17181C),
      appBar: AppBar(
        title: const Text(
          'Copilot',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF17181C),
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Color(0xFF58A6FF)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF1F6FEB),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 10),
          const Text(
            'Agent Sessions',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            decoration: BoxDecoration(
              color: const Color(0xFF21262D).withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xFF30363D),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.cloud_outlined, color: Colors.white70, size: 22),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1F6FEB),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(OctIcons.issue_opened_24, color: Colors.white, size: 20),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xFF238636),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(OctIcons.git_pull_request_24, color: Colors.white, size: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Delegate tasks to GitHub Copilot\ncloud agent',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Let Copilot work independently in the background to complete tasks, and then monitor Copilot\'s progress.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8B949E),
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF21262D),
                      side: const BorderSide(color: Color(0xFF30363D), width: 1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: const Text(
                      'UPGRADE TO COPILOT PRO',
                      style: TextStyle(
                        color: Color(0xFF58A6FF),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 28),
          const Text(
            'Chats',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),

          // Chats Card
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            decoration: BoxDecoration(
              color: const Color(0xFF21262D).withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Color(0xFF30363D),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(OctIcons.copilot_24, color: Colors.white70, size: 22),
                ),
                const SizedBox(height: 16),
                const Text(
                  'No chats yet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Ask Copilot anything to start your first chat.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8B949E),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'NEW CHAT',
                    style: TextStyle(
                      color: Color(0xFF58A6FF),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}