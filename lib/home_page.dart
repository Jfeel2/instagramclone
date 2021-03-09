import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Clon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),  // text style 내에서 color 색상 ,font weight = 굵기
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
              children: <Widget> [
                Text('Instagram에 오신 것을 환영합니다',
                style: TextStyle(fontSize: 24.0),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 동영상을 보려면 팔로우하세요'),
                Padding(padding: EdgeInsets.all(16.0)),
                SizedBox(
                  width: 260.0,
                  //height: 300.0,
                  child: Card(
                    elevation: 4.0 ,  // 그림자 _ 보통 4정도 
                    child: Column(
                      children: <Widget> [
                        Padding(padding: EdgeInsets.all(4.0)),
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://image.dongascience.com/Photo/2018/12/2d5efe44bdd02f3e2ec4e99189d89d18.jpg')
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(3.0)),
                      Text('이메일 주소',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('이름'),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.network('https://cdn.mkhealth.co.kr/news/photo/202004/img_MKH200424005_0.jpg',fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(1.0)),
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.network('https://cdn.mkhealth.co.kr/news/photo/202004/img_MKH200424005_0.jpg',fit: BoxFit.cover),
                          ),
                          Padding(padding: EdgeInsets.all(1.0)),
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.network('https://cdn.mkhealth.co.kr/news/photo/202004/img_MKH200424005_0.jpg',fit: BoxFit.cover),
                          ),
                          Padding(padding: EdgeInsets.all(1.0)),
                        ],
                      ),
                        Padding(padding: EdgeInsets.all(3.0)),
                        Text('Facebook 친구'),
                        Padding(padding: EdgeInsets.all(2.0)),
                        RaisedButton(
                          child: Text('팔로우'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: (){}
                          ),
                        Padding(padding: EdgeInsets.all(4.0)),
                         ],
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
