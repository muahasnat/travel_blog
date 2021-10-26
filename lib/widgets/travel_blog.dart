import 'package:day_10/model/travel.dart';
import 'package:flutter/material.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.genarateTravelBlog();
  final _pgCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pgCtrl,
      physics: const BouncingScrollPhysics(),
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 20, bottom: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    travel.location,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 50,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        );
      },
    );
  }
}
