import 'package:flutter/material.dart';
import 'package:uniaccounts/ui/widgets/appbar/unicaAppBar.dart';
import 'package:uniaccounts/ui/widgets/custom_textfield.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  TextMaskController maskController = TextMaskController(lengthMask: 2);
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    maskController.addListener(() {
      setState(() {});
    });
    setState(() {
      maskController.updateMask(0);
      focusNode.requestFocus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UnicaAppBar(route: '/'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                  width: 300,
                  child: Image.network(
                      'https://raw.githubusercontent.com/reitmas32/unica_cybercoffee/main/public/assets/unica_logo.jpeg'),
                ),
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            const Text(
              'No existe la rura solicitada',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
