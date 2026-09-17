import 'package:flutter/material.dart';

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
                Padding(padding: EdgeInsetsGeometry.all(15),
                child: SingleChildScrollView(
                    child: Column(
                        children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Text('My Work', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, color: const Color.fromARGB(103, 255, 255, 255),)),
                                ],
                            )
                        ],
                    ),
                ),
              )
            ),
        );
    }
}