import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [   //list of wigets to display in row of title
              Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                  icon: Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                          value: 1,
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text('Setting'),
                        ),
                    PopupMenuItem(
                      value: 3,
                      child: Text('Log Out'),
                    )
                  ]
              ),
              SizedBox(width: 10),
            ],
          ),
          body: TabBarView(
            children: [               //childer matlab list of widgets
              Text('Camera'),
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context,index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('Where is my dog?'),
                      trailing: Text('6:30 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text('Zafar'),
                      subtitle: Text('35m ago'),

                    );
                  }
              ),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text('Zafar'),
                      subtitle: Text(index/2==0?'You missed audio Call': 'You missed video call'),
                      trailing: Icon(index/2==0?Icons.phone:Icons.video_call),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}
