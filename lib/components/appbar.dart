import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 8.0, left: 13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Home',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: null,
                  icon: SvgPicture.asset('assets/data-analysis-svgrepo-com.svg',
                  height: 20,
                  width: 20,)),
              IconButton(
                  onPressed: null,
                  icon: SvgPicture.asset('assets/search-svgrepo-com.svg',
                    height: 20,
                    width: 20,)),
              IconButton(
                  onPressed: null,
                  icon: SvgPicture.asset('assets/more-svgrepo-com.svg',
                  height: 20,
                  width: 20,)),
            ],
          )
        ],
      ),
    );
  }
}
