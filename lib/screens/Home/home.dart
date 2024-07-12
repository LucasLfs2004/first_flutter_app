import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 15, 32, 1),
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SvgPicture.asset(
            'assets/sillicon_icon_square.svg',
            width: 48.0,
            height: 48.0,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.0),
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,

                      hintText: 'Pesquisar...',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(1, 15, 32, 1), // Cor do texto de dica
                      ),
                      // border: InputBorder.none, // Remove a borda padrão,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(25.0), // Borda arredondada
                        borderSide: BorderSide.none, // Remove a borda padrão
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 8,),
                      isDense: true,


                    ),
                    style: TextStyle(
                      color: Color.fromRGBO(1, 15, 32, 1),
                      fontSize: ,
                    ),
                  ),
                )),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            icon: SvgPicture.asset(
              'assets/carrinho.svg',
              width: 24,
              height: 24,
            ),
            color: Colors.lightBlueAccent,
          ),
        ]),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}
