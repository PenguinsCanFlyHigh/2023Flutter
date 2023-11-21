import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop(){
    return Text('TOP');
  }

  Widget _buildMiddle() {
    return Text('Middle');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}
