import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  // This widget is the root of your application.
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
          title: Text('KotaのITチャンネル'),
          actions: [
            SizedBox(
                width: 44,
                child: FlatButton(
                    child: Icon(Icons.search),
                    onPressed: (){

                    },
                ),
            ),
            SizedBox(
                width: 44,
                child: FlatButton(
                    child: Icon(Icons.more_vert),
                    onPressed: (){
  
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
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://cdn-images-1.medium.com/max/1200/1*ilC2Aqp5sZd1wi0CopD1Hw.png',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        const Text('KotaのITチャンネル'),
                        FlatButton(
                            onPressed: (){

                            },
                            child: Row(
                              children: [
                                Icon(
                                    Icons.video_call,
                                    color: Colors.red,
                                ),
                                Text('登録する'),
                              ],
                            )
                        )
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
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://i9.ytimg.com/vi/n6CnADKjSeA/mqdefault.jpg?time=1621071600000&sqp=CPCt_oQG&rs=AOn4CLDbEpZpjdJq1Ba-RKOc27_tMEQGrA',
                      ),
                      title: Column(
                        children: [
                          Text(
                              '【未経験】エンジニアに勉強は必須？？',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '234回再生',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '5日前',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                              ),
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
