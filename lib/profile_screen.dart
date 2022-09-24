import 'dart:math';

import 'package:blockchain_app/dependencies.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 241, 245, 1),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              children: [
                RawMaterialButton(
                  onPressed: () => {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 21.0,
                    ),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                ),
                // Padding(
                // padding: const EdgeInsets.only(left: 65.0),
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  "My profile",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Spacer(
                  flex: 5,
                )
                // ),
              ],
            )),
        const Spacer(flex: 1),
        Center(
          child: Container(
            // height: 370,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(16, 24, 40, 0.15),
                  blurRadius: 5,
                  offset: Offset(0, 4),
                ),
              ],
              border: Border.all(width: 0, color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 23.0),
                child: Image.asset("assets/ellipse.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  Dependencies.countOfMoney.toString(),
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  "\$ ${(Dependencies.countOfMoney * Dependencies.tokenInUSD).toString().substring(0, min((Dependencies.countOfMoney * Dependencies.tokenInUSD).toString().indexOf('.') + 3, (Dependencies.countOfMoney * Dependencies.tokenInUSD).toString().length - (Dependencies.countOfMoney * Dependencies.tokenInUSD).toString().indexOf('.') + 1))}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21.0),
                child: Row(children: [
                  Spacer(),
                  Column(
                    children: [
                      RawMaterialButton(
                        onPressed: () => {},
                        elevation: 2.0,
                        fillColor: const Color.fromRGBO(224, 255, 101, 1),
                        child: Center(
                          child: Image.asset(
                            "assets/Icon.png",
                            width: 18,
                            height: 18,
                          ),
                        ),
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          "Buy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      RawMaterialButton(
                        onPressed: () => {},
                        elevation: 2.0,
                        fillColor: Color.fromRGBO(224, 255, 101, 1),
                        child: Center(
                          child: Image.asset(
                            "assets/Icon-2.png",
                            width: 18,
                            height: 18,
                          ),
                        ),
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          "Send",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: Dependencies.tokenList.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                          thickness: 1,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                              height: 40,
                              child: Row(children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset(
                                    Dependencies.tokenList[index].pathToAsset,
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 9.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Text(
                                          "${Dependencies.tokenList[index].value} ${Dependencies.tokenList[index].name}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 4.0,
                                        ),
                                        child: Text(
                                          "\$ ${(Dependencies.tokenList[index].value * Dependencies.tokenList[index].tokenToUSD).toString().substring(0, min((Dependencies.tokenList[index].value * Dependencies.tokenList[index].tokenToUSD).toString().indexOf('.') + 4, (Dependencies.tokenList[index].value * Dependencies.tokenList[index].tokenToUSD).toString().length - (Dependencies.tokenList[index].value * Dependencies.tokenList[index].tokenToUSD).toString().indexOf('.') + 1))} USD",
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.keyboard_arrow_right)),
                              ]),
                            ),
                          );
                        },
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5))
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
        const Spacer(flex: 5),
      ]),
    );
  }
}
