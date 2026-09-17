import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  Widget _DiscoverItem({
    required IconData icon,
    required Color color,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17181C),
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF17181C),
        scrolledUnderElevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Discover',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                _DiscoverItem(
                  icon: OctIcons.flame_24,
                  color: const Color(0xFFF85149),
                  title: 'Trending Repositories',
                ),
                _DiscoverItem(
                  icon: OctIcons.smiley_24,
                  color: const Color(0xFF8250DF),
                  title: 'Awesome Lists',
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),

          const Divider(
            color: Color(0xFF30363D),
            thickness: 1,
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list,
                        color: Color(0xFF8B949E),
                        size: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      OctIcons.rss_24,
                      size: 40,
                      color: Color(0xFF8B949E),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'No activity to show',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Follow people and star repositories to see activity here.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF8B949E),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}