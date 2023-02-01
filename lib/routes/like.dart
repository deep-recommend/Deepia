import 'package:flutter/material.dart';

import '../widgets/login.bottom.sheet.dart';

class Like extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 36.0, horizontal: 24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          'お気にいり',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFE0E0E0),
                            ),
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'お気にいりを表示するにはログインしてください',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                                Text('ログインすると、お気にいりを作成、表示、編集することができます。',
                                    style: TextStyle(fontSize: 16.0))
                              ],
                            )),
                      ),
                      LoginBottomSheetButton(0.3),
                    ]))));
  }
}
