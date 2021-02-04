import 'package:flutter/material.dart';
import 'package:youtube_app/video_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text('KBOYのFlutter大学'),
          actions: [
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  // todo
                },
              ),
            ),
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  // todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                        'https://yt3.ggpht.com/ytc/AAUvwng4tQ0GjNvQN6XMMV8G4ISM5HXt-y2xhvFSMPiD=s900-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'KBOYのFlutter大学',
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: () {
                            // todo
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://yt3.ggpht.com/ytc/AAUvwng4tQ0GjNvQN6XMMV8G4ISM5HXt-y2xhvFSMPiD=s900-c-k-c0x00ffffff-no-rj',
                      ),
                      title: Column(
                        children: [
                          Text(
                            'Flutter超入門',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text('267'),
                              Text('5日前'),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
