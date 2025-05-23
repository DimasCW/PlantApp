import 'package:flutter/material.dart';
import 'package:plantapp/constraints.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/screens/details/components/icon_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          onPressed: () {Navigator.pop(context);},
                          icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                            
                        )
                      ),
                      Spacer(),
                      IconCard(
                        icon: 'assets/icons/sun.svg',
                      ),
                      IconCard(
                        icon: 'assets/icons/icon_2.svg',
                      ),
                      IconCard(
                        icon: 'assets/icons/icon_3.svg',
                      ),
                      IconCard(
                        icon: 'assets/icons/icon_4.svg',
                      ),
                    ]
                  ),
                ),
                child: Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(63),
                      bottomLeft: Radius.circular(63),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.25),
                        blurRadius: 60,
                        
                      )
                    ],
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover,
                    ),
                  )
                ),
              )
            ],
          ),
        )
      ]
    )
    
  }
}

