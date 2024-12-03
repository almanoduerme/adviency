import 'package:day_03/home/gift.dart';
import 'package:day_03/home/widgets/gift_item.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GiftList extends StatefulWidget {
  const GiftList({super.key});

  @override
  State<GiftList> createState() => _GiftListState();
}

class _GiftListState extends State<GiftList> {
  final List<Gift> _gifts = [];
  final TextEditingController _textFieldController = TextEditingController();

  void _addGiftItem(String name) {
    if (name.trim().isEmpty) {
      Fluttertoast.showToast(
          msg: "Gift name cannot be empty!",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 1,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }
    setState(() {
      _gifts.add(Gift(name: name.trim()));
    });
    _textFieldController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A D V I E N C Y - D A Y - 0 3"),
        backgroundColor: Colors.green,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        itemCount: _gifts.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GiftItem(gift: _gifts[index]),
              const SizedBox(height: 12)
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _displayDialog,
        tooltip: 'Add a gift',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _displayDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add a gift'),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: 'Type your gift'),
            autofocus: true,
          ),
          actions: <Widget>[
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                _addGiftItem(_textFieldController.text);
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
