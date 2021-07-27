import 'package:flutter/material.dart';
import 'package:tweetapp/post.dart';

class TextInputWidget extends StatefulWidget {
  Function(String) callback;
  TextInputWidget(this.callback);
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  void printer() {
    widget.callback(this.controller.text);
    controller.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (TextField(
        controller: this.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.message),
          labelText: 'Enter a Text',
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            onPressed: this.printer,
          ),
        )));
  }
}
