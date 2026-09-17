import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';
import 'package:github/screens/copilot_screen.dart';
import 'package:github/screens/explore_screen.dart';
import 'package:github/screens/home_screen.dart';
import 'package:github/screens/inbox_screen.dart';

void main(){
    runApp(GithubApp());
}

class GithubApp extends StatefulWidget {
  const GithubApp({super.key});
  @override
  State<GithubApp> createState() => _GithubAppState();
}

class _GithubAppState extends State<GithubApp> {
    int _currentIndex = 0;
    Widget _getSelectedScreen(int index) {
        if (index == 0) {
            return HomeScreen();
        } else if (index == 1) {
            return InboxScreen();
        } else if (index == 2) {
            return ExploreScreen();
        } else {
            return CopilotScreen();
        }
    }
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: ThemeData(
            brightness: Brightness.dark,
            ),
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                 bottomNavigationBar: 
                    Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Color(0xFF30363D), width: 0.8),
                            ),
                        ),
                        child: NavigationBarTheme(
                            data: NavigationBarThemeData(
                                backgroundColor: const Color(0xFF161B22),
                                indicatorColor: const Color(0xFF1F6FEB).withValues(alpha: 0.35),
                                labelTextStyle: WidgetStateProperty.resolveWith((states) {
                                    final isSelected = states.contains(WidgetState.selected);
                                    return TextStyle(
                                        color: isSelected ? Colors.white : const Color(0xFF8B949E),
                                        fontSize: 12,
                                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                    );
                                }),
                                iconTheme: WidgetStateProperty.resolveWith((states) {
                                    final isSelected = states.contains(WidgetState.selected);
                                    return IconThemeData(
                                        color: isSelected ? const Color(0xFF58A6FF) : const Color(0xFF8B949E),
                                        size: 22,
                                    );
                                }),
                            ),
                            child: NavigationBar(
                                selectedIndex: _currentIndex,
                                onDestinationSelected: (index) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                },
                                height: 65,
                                destinations: const [
                                    NavigationDestination(
                                        icon: Icon(OctIcons.home_24),
                                        selectedIcon: Icon(OctIcons.home_fill_24),
                                        label: 'Home',
                                    ),
                                    NavigationDestination(
                                        icon: Icon(OctIcons.inbox_24),
                                        selectedIcon: Icon(OctIcons.inbox_fill_24),
                                        label: 'Inbox',
                                    ),
                                    NavigationDestination(
                                        icon: Icon(OctIcons.telescope_24),
                                        selectedIcon: Icon(OctIcons.telescope_fill_24),
                                        label: 'Explore',
                                    ),
                                    NavigationDestination(
                                        icon: Icon(OctIcons.copilot_24),
                                        selectedIcon: Icon(OctIcons.copilot_24),
                                        label: 'Copilot',
                                    ),
                                ],
                            ),
                        ),
                    ),
                    body: _getSelectedScreen(_currentIndex),
            ),
        );
    }
}