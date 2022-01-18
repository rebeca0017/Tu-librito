// ignore_for_file: deprecated_member_us
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/registro_pages.dart';

// ignore: must_be_immutable
class PrincipalPage extends StatelessWidget {
  final String image;
  TextStyle stily = const TextStyle(color: Colors.white);

  PrincipalPage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi librito'), 
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FadeInImage(placeholder: NetworkImage('https://estaticos.muyinteresante.es/uploads/images/test/5899d3b75cafe85ef18b4568/test-libros0.jpg'), image: AssetImage(image)),
            const Text(
              'My aplicacion de Flutter',
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
                          Get.to(RegistroPage(),
                              transition: Transition.fade);
                        })),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: RaisedButton(
                        color: Colors.blue,
                        child: const Text('Login'),
                        onPressed: () {
                          Get.to(LoginPage(),
                              transition: Transition.zoom);
                        })),
              ],
            )
          ],
        ));
  }
}
