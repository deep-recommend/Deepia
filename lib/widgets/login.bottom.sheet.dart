import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginBottomSheetButton extends StatefulWidget {
  final num buttonWidthRatio;
  LoginBottomSheetButton(this.buttonWidthRatio);

  @override
  _LoginBottomSheetButton createState() => _LoginBottomSheetButton();
}

class _LoginBottomSheetButton extends State<LoginBottomSheetButton> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          _size.width * widget.buttonWidthRatio,
          50,
        ),
      ),
      child: Text('ログイン'),
      onPressed: () async {
        var result = await showModalBottomSheet<int>(
          context: context,
          builder: (BuildContext context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Music'),
                  onTap: () => Navigator.of(context).pop(1),
                ),
                ListTile(
                  leading: Icon(Icons.videocam),
                  title: Text('Video'),
                  onTap: () => Navigator.of(context).pop(2),
                ),
                ListTile(
                  leading: Icon(Icons.camera),
                  title: Text('Picture'),
                  onTap: () => Navigator.of(context).pop(3),
                ),
              ],
            );
          },
        );
        print('bottom sheet result: $result');
      },
    );
  }
}
