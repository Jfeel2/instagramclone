import 'package:flutter/material.dart';

import 'create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton:  FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => CreatePage()));
        },  //수정 _ create page 로의 연결
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1),
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildListItem(context,index);
        });
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network(
        'https://cdn.mkhealth.co.kr/news/photo/202004/img_MKH200424005_0.jpg',
      fit: BoxFit.cover);
  }
}
