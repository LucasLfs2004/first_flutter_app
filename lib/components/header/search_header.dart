import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';


class SearchHeader extends StatefulWidget implements PreferredSizeWidget {
  const SearchHeader({super.key});

  @override
  State<SearchHeader> createState() => _SearchHeaderState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _SearchHeaderState extends State<SearchHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/sillicon_icon_square.svg',
          width: 48.0,
          // height: 56.0,
        ),
        InnerShadow(
          // shadows: [
          //   Shadow(
          //     color: Colors.white,
          //     offset: Offset(-4, -4),
          //     blurRadius: 6,
          //   ),
          //   Shadow(
          //     color: Color.fromRGBO(209, 217, 230, 1),
          //     offset: Offset(-4, -4),
          //     blurRadius: 6,
          //   ),
          // ],
          child: Container(
            width: 200,
            height: 30,

            decoration: BoxDecoration(
              color: Color.fromRGBO(236, 240, 243, 1),
              borderRadius: BorderRadius.circular(5.0),

            ),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(1, 15, 32, 1),
                ),
                fillColor: Colors.transparent,
                filled: true,
                hintText: 'Pesquisar',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(1, 15, 32, 1),
                  fontWeight: FontWeight.w400
                ),
                // border: InputBorder.none, // Remove a borda padrão,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0), // Borda arredondada
                  borderSide: BorderSide.none, // Remove a borda padrão
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                isDense: true,
              ),
              style: TextStyle(
                  color: Color.fromRGBO(1, 15, 32, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
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
      ],
    );
  }
}
