import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance; //인증을 위한 객체

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Instagram clone',
               style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: EdgeInsets.all(50)
            ),
            SignInButton(
                Buttons.Google,
                onPressed: (){
                  //var user = await _handleSignIn(); // return이 future 타입이 되야해서 이렇게는 안됨
                  _handleSignIn().then((user) {   // 비동기식 처리방법 _ 로그인 시 프린트하는 방식 _ 정보를 tap page 가 갖어야하므로 tappage 생성
                    print(user);
                  });
                },
                )
          ],
        ),
      ),
    );
  }

  Future<FirebaseUser> _handleSignIn() async {  //비동기로 동작
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    UserCredential user = await _auth.signInWithCredential(                     //firebase 객체
      GoogleAuthProvider.getCredential(
           idToken: googleAuth.idToken, accessToken: googleAuth.accessToken));
      return user;    //version 호환 문제인듯 _ google signin 상의 버전 체크 ->  강의 영상 버전대로 진행 시도
  }
}
