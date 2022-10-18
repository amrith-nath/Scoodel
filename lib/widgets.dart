import 'package:flutter/material.dart';
import 'package:scoodal/constants.dart';
import 'package:scoodal/paint.dart';

Padding appbarIconWidget({required String file, required double size}) {
  return Padding(
    padding: EdgeInsets.all(size),
    child: Image.asset(
      file,
    ),
  );
}

Text kHeadText({required String text}) {
  return Text(
    text,
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Text kBoldtext({required String text}) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.w500,
    ),
  );
}

kListTileGreen() {
  return const SizedBox(
    width: 300,
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.location_on,
          color: Colors.green,
        ),
      ),
      title: Text(
        '655 Linyin Ave',
        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),
      ),
      subtitle: Text('Jeehom'),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.green,
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    ),
  );
}

kListTile() {
  return const SizedBox(
    width: 300,
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.flag,
          color: Colors.red,
        ),
      ),
      title: Text(
        'Enter our Destination',
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    ),
  );
}

section2() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeadText(text: 'Details'),
          kSizedBox20,
          kListTileGreen(),
          kSizedBox20,
          kListTile()
        ],
      ),
      Container(
        width: 50,
        height: 200,
        child: CustomPaint(
          painter: ArrowPainter(),
        ),
      ),
    ],
  );
}
