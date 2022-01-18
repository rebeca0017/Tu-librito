// ignore_for_file: deprecated_member_us
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/registro_pages.dart';

// ignore: must_be_immutable
class PrincipalPage extends StatelessWidget {
  TextStyle stily = const TextStyle(color: Colors.white);

  PrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('mi librito'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              'assets/portada.jpeg',
              width: 80.0,
              height: 100.0,
            ),
            const Text(
              'mi librito',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 100),
            Row(
              children: [
                Expanded(
                    child: RaisedButton(
                        color: Colors.green,
                        child: const Text('Registrar'),
                        onPressed: () {
                          Get.to(RegistroPage(), transition: Transition.fade);
                        })),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: RaisedButton(
                        color: Colors.blue,
                        child: const Text('Login'),
                        onPressed: () {
                          Get.to(LoginPage(), transition: Transition.zoom);
                        })),
              ],
            )
          ],
        ));
  }
}
