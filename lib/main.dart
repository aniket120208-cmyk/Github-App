import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

void main(){
    runApp(GithubApp());
}

class GithubApp extends StatelessWidget {
    const GithubApp({super.key});
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                backgroundColor: const Color(0xFF17181C),
                appBar: AppBar(
                    title: Text('Home',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    actions: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Color(0xFF86B5EB),size: 22)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.loop_outlined,color: Color(0xFF86B5EB),size: 22)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,color: Color(0xFF86B5EB),size: 22)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Color(0xFF86B5EB),size: 22))
                    ],
                    backgroundColor: const Color(0xFF17181C),
                    scrolledUnderElevation: 0,
                    
                ),

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
                                selectedIndex: 0,
                                onDestinationSelected: (index) {},
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
                
                body: 
                Padding(
                padding: EdgeInsetsGeometry.only(left: 15, right: 15),
                child: SingleChildScrollView(
                    child: Column(
                        children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Text('My Work', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, color: const Color.fromARGB(103, 255, 255, 255),)),
                                ],
                            ),
                            SizedBox(height: 20),
                            InkWell(
                            child: Row(
                                children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.issue_opened_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Issues', style: TextStyle(color: Colors.white, fontSize: 17),)
                                    
                                ],
                            ),),
                            SizedBox(height: 25,),
                            InkWell(
                            child: Row(
                                children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.git_pull_request_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Pull Requests', style: TextStyle(color: Colors.white, fontSize: 17),)
                                ],
                            ),),
                            SizedBox(height: 25,),
                            InkWell(
                            child: Row(
                                children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF8250DF),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.comment_discussion_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Discussions', style: TextStyle(color: Colors.white, fontSize: 17),)
                                ],
                            ),),
                            SizedBox(height: 25,),
                            InkWell(
                            child: Row(
                                children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.project_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Projects', style: TextStyle(color: Colors.white, fontSize: 17),)
                                ],
                            ),),
                            SizedBox(height: 25,),
                            InkWell(
                            child: Row(
                                children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF30363D),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.repo_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Top Repositories', style: TextStyle(color: Colors.white, fontSize: 17),)
                                ],
                            ),),
                            SizedBox(height: 25,),
                            InkWell(
                            child: Row(
                                children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.organization_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Organizations', style: TextStyle(color: Colors.white, fontSize: 17),)
                                ],
                            ),),
                            SizedBox(height: 25,),
                            InkWell(
                            child: Row(
                                children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFFD4A72C),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.star_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Starred', style: TextStyle(color: Colors.white, fontSize: 17),)
                                ],
                            ),),
                            SizedBox(height: 20,),
                            const Divider(
                                color: Color(0xFF30363D),
                                thickness: 1,
                                height: 40,
                            ),
                            SizedBox(height: 20,),
                            Padding(padding: EdgeInsetsGeometry.only(right: 250),
                            child: Text('Favorites', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),),
                            SizedBox(height: 30,),
                            Text('Add favorite repositories for quick access at any time, without having to search', style: TextStyle(color: const Color.fromARGB(162, 255, 255, 255), fontSize: 17),textAlign: TextAlign.center,),
                            SizedBox(height: 15,),
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: OutlinedButton(onPressed: (){}, 
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0xFF21262D),
                                  side: const BorderSide(
                                    color: Color(0xFF30363D),
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: Text('ADD FAVORITES',style: TextStyle(color: Colors.blue,),),
                              ),
                            ),
                            SizedBox(height: 20,),
                            const Divider(
                                color: Color(0xFF30363D),
                                thickness: 1,
                                height: 40,
                            ),
                            SizedBox(height: 20,),
                            Padding(padding: EdgeInsetsGeometry.only(right: 240),
                            child: Text('Shortcuts', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildCircle(const Color(0xFF30363D), OctIcons.zap_16),
                                _buildCircle(const Color(0xFF238636), OctIcons.issue_opened_16),
                                _buildCircle(const Color(0xFF1F6FEB), OctIcons.git_pull_request_16),
                                _buildCircle(const Color(0xFF8957E5), OctIcons.comment_discussion_16),
                                _buildCircle(const Color(0xFFBD561D), OctIcons.organization_16),
                                _buildCircle(const Color(0xFFA371F7), OctIcons.people_16),
                                _buildCircle(const Color(0xFF8250DF), OctIcons.project_16),
                                _buildCircle(const Color(0xFF30363D), OctIcons.file_diff_16),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Padding(padding: EdgeInsetsGeometry.only(right: 30, left: 30),
                            child: Column(children: [Text('The things you need, one tap away', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            SizedBox(height: 8),
                            Text('Fast access your lists of Issue, Pull Requests, or Discussions', style: TextStyle(color: const Color.fromARGB(162, 255, 255, 255), fontSize: 17,),textAlign: TextAlign.center,),],),),
                            SizedBox(height: 15,),
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: OutlinedButton(onPressed: (){}, 
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0xFF21262D),
                                  side: const BorderSide(
                                    color: Color(0xFF30363D),
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: Text('GET STARTED',style: TextStyle(color: Colors.blue,),),
                              ),
                            ),
                            SizedBox(height: 100,)
                        ],
                    ),
                ),
              )
            ),
        );
    }
}

Widget _buildCircle(Color color, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 14),
    );
  }