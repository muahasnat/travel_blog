import 'package:day_10/model/travel.dart';
import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  final _lists = Travel.mostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var travel = _lists[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                travel.url,
                fit: BoxFit.cover,
                width: 150,
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
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    travel.location,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        );
      },
      separatorBuilder: (_, index) => SizedBox(
        width: 50,
      ),
      itemCount: _lists.length,
    );
  }
}
