import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram Clon",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text("Instagram에 오신걸 환영합니다.", style: TextStyle(fontSize: 24.0)),
                Padding(padding: EdgeInsets.all(8.0)),
                Text("사진과 동영상을 보려면 팔로우 하세요..."),
                Padding(padding: EdgeInsets.all(8.0)),
                SizedBox(
                  width: 260.0,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(4.0)),
                          SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.upbit.com/images/sliderbt01.34aab91.png')),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text('이메일 주소',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('이름'),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  "https://static.upbit.com/logos/SRN.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  "https://static.upbit.com/logos/THETA.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  "https://static.upbit.com/logos/SRN.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('Facebook 친구'),
                          Padding(padding: EdgeInsets.all(4.0)),
                          RaisedButton(
                            child: Text("팔로우"),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
