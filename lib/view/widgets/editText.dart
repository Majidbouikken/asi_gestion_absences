import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  final hintText;

  const EditText({Key key, this.hintText}) : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  final _focusNode = FocusNode();
  bool _isFocused;

  @override
  void initState() {
    _isFocused = false;
    _focusNode.addListener(() {
      if (_focusNode.hasFocus)
        setState(() {
          _isFocused = true;
        });
      else
        setState(() {
          _isFocused = false;
        });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(
              color: _isFocused
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        focusNode: _focusNode,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            hintText: this.widget.hintText),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
