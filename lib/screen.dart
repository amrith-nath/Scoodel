import 'package:flutter/material.dart';
import 'package:scoodal/constants.dart';
import 'package:scoodal/widgets.dart';

class SamplePage extends StatelessWidget {
  SamplePage({super.key});

  final List<bool> selections = [true, false];
  final List<String> itemnames = [
    'Daily necessities',
    'Food',
    'Document',
    'Clothing',
    'Digital Product',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    List<bool> itemSelections =
        List.generate(itemnames.length, (index) => false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: appbarIconWidget(file: menuIcon, size: 5),
        actions: [
          appbarIconWidget(file: fileIcon, size: 18),
          appbarIconWidget(file: notifyIcon, size: 18),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSizedBox,
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: kButtonStyle(radius: 15),
                  child: const Text(
                    'send',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: kBoldtext(text: "Fetch me"),
                )
              ],
            ),
            kSizedBox40,
            section2(),
            kSizedBox40,
            section3(),
            kSizedBox40,
            section4(itemSelections),
            kSizedBox40,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kBoldtext(text: 'Total Price'),
                    kHeadText(text: '\$48,80')
                  ],
                ),
                kSizedBox30,
                SizedBox(
                  width: 400,
                  height: 60,
                  child: ElevatedButton(
                      style: kButtonStyle(radius: 20),
                      onPressed: () {},
                      child: kBoldtext(text: 'Submit')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Column section4(List<bool> itemSelections) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeadText(text: 'Item Information'),
        kSizedBox,
        StatefulBuilder(builder: (context, setState) {
          return Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: List.generate(
                itemnames.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          itemSelections =
                              List.generate(itemSelections.length, (i) {
                            if (i != index) {
                              return false;
                            } else {
                              return true;
                            }
                          });
                        });
                      },
                      child: itemCard(
                          text: itemnames[index],
                          isSelected: itemSelections[index]),
                    )),
          );
        })
      ],
    );
  }

  Container itemCard({required String text, required bool isSelected}) {
    return Container(
      height: 40,
      width: 110,
      decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Colors.grey.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border:
              Border.all(color: isSelected ? Colors.white : Colors.black12)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black),
      )),
    );
  }

  Column section3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeadText(text: 'Pick Up'),
        kSizedBox,
        StatefulBuilder(builder: (context, setState) {
          return Row(
            children: [
              kBoldtext(text: 'Time'),
              kWidth,
              ToggleButtons(
                selectedColor: Colors.white,
                fillColor: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                renderBorder: true,
                isSelected: selections,
                onPressed: ((index) {
                  setState(() {
                    if (index == 1) {
                      selections[1] = true;
                      selections[0] = false;
                    } else {
                      selections[0] = true;
                      selections[1] = false;
                    }
                  });
                }),
                children: [
                  kBoldtext(text: 'AM'),
                  kBoldtext(text: 'PM'),
                ],
              ),
              kWidth,
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.black12)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kBoldtext(text: '11:00'),
                        kBoldtext(text: '-'),
                        kBoldtext(text: '12:00'),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        })
      ],
    );
  }
}
