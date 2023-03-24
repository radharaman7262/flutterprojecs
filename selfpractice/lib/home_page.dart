import 'package:flutter/material.dart';
import 'package:selfpractice/group_page.dart';
import 'package:selfpractice/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Column(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://yt3.googleusercontent.com/ytc/AL5GRJVFUbrqLgTKs3qvoiGiZDvJHXkB_pzHwyussmGX=s900-c-k-c0x00ffffff-no-rj'),
                    ),
                    Text("Radha Raman"),
                    ElevatedButton(onPressed: () {}, child: Text("pr Settings"))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GroupPage()),
                  );
                },
                leading: Icon(Icons.group),
                title: Text('Groups'),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              addRepaintBoundaries: ,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 30,
                  color: Colors.green,
                )
              ],
            ),
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Image.network(
                            'https://i.pinimg.com/originals/19/db/31/19db31732931019b73bedcf17924f814.jpg'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                        ),
                        title: Text("First Element"),
                        trailing: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Image.network(
                            'https://static-cse.canva.com/blob/1024437/1600w-wK95f3XNRaM.jpg'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                        ),
                        title: Text("Second Element"),
                        trailing: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Image.network(
                            'https://static-cse.canva.com/blob/1024437/1600w-wK95f3XNRaM.jpg'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                        ),
                        title: Text("Third Element"),
                        trailing: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Image.network(
                            'https://global-uploads.webflow.com/61a0a53beeb118af7ddb4c55/61c0ba0267c18ebf1fd19b2f_maxresdefault-1-1-1024x576.jpeg'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                        ),
                        title: Text("Fourth Element"),
                        trailing: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Image.network(
                            'https://i.ytimg.com/vi/vZAHL53I2ms/maxresdefault.jpg'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                        ),
                        title: Text("Fifth Element"),
                        trailing: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Image.network(
                            "https://i.ytimg.com/vi/vZAHL53I2ms/maxresdefault.jpg"),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.redAccent,
                        ),
                        title: Text("nth element"),
                        trailing: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
