import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  Widget _appbarbutton(String text, {bool hasDropdown = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF21262D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
          if (hasDropdown) const SizedBox(width: 4),
          if (hasDropdown) const Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 16),
        ],
      ),
    );
  }

  Widget _dummyItem({
    required String repo,
    required String number,
    required String title,
    required String status,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Icon(OctIcons.git_merge_24, color: Color(0xFF8250DF), size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '$repo $number',
                        style: const TextStyle(color: Color(0xFF8B949E), fontSize: 13),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(time, style: const TextStyle(color: Color(0xFF8B949E), fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 4),
                SizedBox(
                width: 250,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.check, color: Color(0xFF8B949E), size: 14),
                    const SizedBox(width: 4),
                    Text(status, style: const TextStyle(color: Color(0xFF8B949E), fontSize: 12)),
                  ],
                ),
              ],
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
          'Inbox',
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
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                _appbarbutton('Inbox', hasDropdown: true),
                _appbarbutton('Focused'),
                _appbarbutton('Unread'),
                _appbarbutton('Repository', hasDropdown: true),
              ],
            ),
          ),
          const Divider(color: Color(0xFF30363D), thickness: 0.8, height: 16),
          _dummyItem(
            repo: 'aniket120208-cmyk / Climb-Knight',
            number: '#11',
            title: 'fix: prevent ladders from spawning in a repeating pattern',
            status: 'Merged #11 into main.',
            time: '8d',
          ),
          const Divider(color: Color(0xFF30363D), thickness: 0.8, height: 1),
          _dummyItem(
            repo: 'aniket120208-cmyk / Climb-Knight',
            number: '#10',
            title: 'feat: add ladders for movement between platforms',
            status: 'Merged #10 into main.',
            time: '8d',
          ),
          const Divider(color: Color(0xFF30363D), thickness: 0.8, height: 1),
        ],
      ),
    );
  }
}