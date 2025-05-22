import 'package:flutter/material.dart';
import 'package:plantapp/constraints.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomandPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantah",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          RecomandPlantCard(
            image: "assets/images/image_2.png",
            title: "Samantah",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          RecomandPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantah",
            country: "Russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomandPlantCard extends StatelessWidget {
  const RecomandPlantCard({
    super.key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  });

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button),
                      TextSpan(text: "$country".toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                      )
                    ])
                  ),
                  Spacer(),
                  Text('\$$price',
                  style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                  )
                ]
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key,
    this.title,
    this.press,
  });

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child: Text("More", style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    super.key,
    this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(left: kDefaultPadding/4),
          child: Text(text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding/4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      )
    );
  }
}
