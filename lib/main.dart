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
                    BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.black,
                        selectedItemColor: Colors.white,
                        unselectedItemColor: Colors.grey,
                        items: [
                            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
                            BottomNavigationBarItem(icon: Icon(Icons.inbox),label: 'Inbox'),
                            BottomNavigationBarItem(icon: Icon(Icons.travel_explore),label: 'Explore'),
                            BottomNavigationBarItem(icon: Icon(Icons.code),label: 'Copilot'),
                        ],
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
                                        color: Color(0xFF30363D),
                                        height: 35,
                                        width: 35,
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
                                        color: Colors.orange,
                                        height: 35,
                                        width: 35,
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
                                        color: const Color(0xFFD4A72C),
                                        height: 35,
                                        width: 35,
                                        child: IconButton(onPressed: (){}, icon: Icon(OctIcons.star_24, color: Colors.white, size: 20,),),),
                                    SizedBox(width: 20,),
                                    Text('Starred', style: TextStyle(color: Colors.white, fontSize: 17),)
                                ],
                            ),),
                            SizedBox(height: 20,),
                            Padding(padding: EdgeInsetsGeometry.only(right: 250),
                            child: Text('Favorites', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),),
                            SizedBox(height: 30,),
                            Text('Add favorite repositories for quick access at any time, without having to search', style: TextStyle(color: const Color.fromARGB(162, 255, 255, 255), fontSize: 17),textAlign: TextAlign.center,),
                            SizedBox(height: 7,),
                            OutlinedButton(onPressed: (){}, child: Text('ADD FAVORITES',style: TextStyle(color: Colors.blue),)),
                            SizedBox(height: 20,),
                            Padding(padding: EdgeInsetsGeometry.only(right: 240),
                            child: Text('Shortcuts', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),),
                            SizedBox(height: 30,),
                            Row(
                                children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.circle, color: Colors.blue,)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.circle, color: Colors.blue,)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.circle, color: Colors.blue,)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.circle, color: Colors.blue,)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.circle, color: Colors.blue,)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.circle, color: Colors.blue,)),
                                    
                                ],
                            ),
                            SizedBox(height: 7,),
                            Padding(padding: EdgeInsetsGeometry.only(right: 30, left: 30),
                            child: Column(children: [Text('The things you need, one tap away', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            SizedBox(height: 8),
                            Text('Fast access your lists of Issue, Pull Requests, or Discussions', style: TextStyle(color: const Color.fromARGB(162, 255, 255, 255), fontSize: 17,),textAlign: TextAlign.center,),],),),
                            SizedBox(height: 7,),
                            OutlinedButton(onPressed: (){}, child: Text('Get Started',style: TextStyle(color: Colors.blue),)),
                            SizedBox(height: 100,)
                        ],
                    ),
                ),
              )
            ),
        );
    }
}