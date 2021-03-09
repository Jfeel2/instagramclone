import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget { //값이 변경되는 부분이 있기때문
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody()
    );
  }

  _buildAppbar() {
    return AppBar(
      actions: <Widget> [
        IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: (){},
        )
      ],
    );
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,  // row 의 상단 부터 배치
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  // 게시물, 팔로워, 팔로잉 사이 간격 배치
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://cdn.mkhealth.co.kr/news/photo/202004/img_MKH200424005_0.jpg'),
                    ),
                  ),
                  Container(                  //컨테이너 속성으로 감싸준 후 배치
                    width: 80,
                    height: 80,
                    alignment: Alignment.bottomRight, //button 오른쪽 아래 배치
                    child: Stack(
                        alignment: Alignment.center,
                        children : <Widget >[
                          SizedBox(
                              width: 28,
                              height: 28,
                              child: FloatingActionButton(onPressed: null,
                                  backgroundColor: Colors.white
                              )
                          ),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: FloatingActionButton(onPressed: null,
                                backgroundColor: Colors.blue,
                                child: Icon(Icons.add)
                            )
                        ),
                      ],
                    ),
                  )
                ],

              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text('이름',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

            ],
          ),
          Text('0\n게시물',
                textAlign: TextAlign.center,
          style: TextStyle(fontSize:  18)
          ),
          Text('0\n팔로워',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize:  18)
          ),
          Text('0\n팔로잉',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize:  18)
          ),
        ],
      ),
    );
  }
}

