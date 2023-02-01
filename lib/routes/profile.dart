import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/url.launcher.dart';
import '../widgets/login.bottom.sheet.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'プロフィール',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 32,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
                child: Text(
                  'ドライブの計画を始められるよう、ログインしてください。',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              LoginBottomSheetButton(1),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
                child: Row(children: <Widget>[
                  const Text(
                    'アカウントをお持ちでありませんか？',
                  ),
                  InkWell(
                    child: const Text("登録",
                        style: TextStyle(decoration: TextDecoration.underline)),
                    onTap: () async {},
                  ),
                ]),
              ),
              InkWell(
                onTap: () => debugPrint("InkWell tapped"),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFE0E0E0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Column(children: <Widget>[
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 8.0),
                            child: Icon(Icons.payments, size: 48.0),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'ドライブの空き時間を収入源に',
                              ),
                              Text("詳しく読む",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline)),
                            ],
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              InkWell(
                onTap: () => debugPrint("InkWell tapped"),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFE0E0E0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 8.0),
                                child: Icon(Icons.settings, size: 24.0),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '設定',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.navigate_next,
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              InkWell(
                onTap: () => debugPrint("InkWell tapped"),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFE0E0E0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 8.0),
                                child: Icon(Icons.help, size: 24.0),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'ヘルプを求める',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.navigate_next,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
