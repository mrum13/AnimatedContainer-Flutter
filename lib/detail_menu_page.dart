import 'package:animated_container/card_size.dart';
import 'package:flutter/material.dart';

class DetailMenuPage extends StatefulWidget {
  const DetailMenuPage({super.key});

  @override
  State<DetailMenuPage> createState() => _DetailMenuPageState();
}

class _DetailMenuPageState extends State<DetailMenuPage> {
  double heightCup = 150;
  double widthCup = 150;
  Color defaultColor = Colors.grey;
  int selectedSized = 0;

  List<String> sizeCup = ["Reguler", "Large"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img_logo.png",
                height: 50,
              ),
              const SizedBox(
                height: 24,
              ),
              Image.asset(
                "assets/img_yotta_1.png",
                width: double.infinity,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Paket Hemat Yotta",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Beli 3 lebih murah bisa dapat 3 varian rasa berbeda, ",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Rp. 35.000",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.green),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(2, (index) {
                          return Column(
                            children: [
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedSized = index;
                                    });

                                    if (selectedSized == 0) {
                                      setState(() {
                                        heightCup = 150;
                                        widthCup = 150;
                                      });
                                    } else {
                                      setState(() {
                                        heightCup = 200;
                                        widthCup = 200;
                                      });
                                    }
                                  },
                                  child: CardSized(
                                      borderColor: Colors.green,
                                      textColor: selectedSized == index
                                          ? Colors.white
                                          : Colors.black54,
                                      color: selectedSized == index
                                          ? Colors.green
                                          : Colors.white,
                                      index: index,
                                      text: sizeCup[index])),
                              const SizedBox(
                                height: 28,
                              )
                            ],
                          );
                        })),
                    AnimatedContainer(
                      width: widthCup,
                      height: heightCup,
                      duration: Duration(seconds: 1),
                      curve: Curves.elasticInOut,
                      child: Image.asset(
                        "assets/img_yotta_2.png",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
