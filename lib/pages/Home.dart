import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/details.dart';
import 'package:flutter_application_3/pages/shoppingcart.dart';
import 'package:flutter_application_3/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool bread = false, chease = false, noodles = false, pizza = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hi Amma&Nanna,", style: AppWidget.boldTextFeildStyle()),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(7)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ShoppingCart()));
                    },
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          const  SizedBox(
              height: 20.0,
            ),
            Text("Delicious Food,", style: AppWidget.HeadlineTextFeildStyle()),
            Text("Discover and Get Great Food,",
                style: AppWidget.LightTextFeildStyle()),
            //First Item
          const  SizedBox(
              height: 15.0,
            ),
            Container(margin: const EdgeInsets.only(right: 20.0), child: showItem()),
          const  SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/bread.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                                
                              ),
                              Text("Bread yummy",
                                  style: AppWidget.semiBooldTextFeildStyle()),
                            const  SizedBox(
                                height: 5.0,
                              ),
                              Text("Fresh and teasty",
                                  style: AppWidget.LightTextFeildStyle()),
                            const  SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "\$49",
                                style: AppWidget.semiBooldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                const  SizedBox(
                    width: 15.0,
                  ),
                  //Second Item
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Testy Pizza",
                                style: AppWidget.semiBooldTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text("Non Veg and testy",
                                style: AppWidget.LightTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$99",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Third Item
                const  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Testy Pizza",
                                style: AppWidget.semiBooldTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text("Non Veg and testy",
                                style: AppWidget.LightTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$99",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
          const        SizedBox(
                    width: 15.0,
                  ),
                  //Four Item
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Testy Pizza",
                                style: AppWidget.semiBooldTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text("Non Veg and testy",
                                style: AppWidget.LightTextFeildStyle()),
                const            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$99",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
          const        SizedBox(
                    width: 15.0,
                  ),
                  //Fivth Item
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Testy Pizza",
                                style: AppWidget.semiBooldTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text("Non Veg and testy",
                                style: AppWidget.LightTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$99",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Connecting page
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Testy Pizza",
                                style: AppWidget.semiBooldTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text("Non Veg and testy",
                                style: AppWidget.LightTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$99",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                const  SizedBox(
                    width: 15.0,
                  ),
                  //Item Conneting
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Testy Pizza",
                                style: AppWidget.semiBooldTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text("Non Veg and testy",
                                style: AppWidget.LightTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$99",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                const  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Testy Pizza",
                                style: AppWidget.semiBooldTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text("Non Veg and testy",
                                style: AppWidget.LightTextFeildStyle()),
                          const  SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$99",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        const   SizedBox(
              height: 20.0,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/noodles.jpg",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    const  SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Test Yummy yuppy Noodles",
                                style: AppWidget.semiBooldTextFeildStyle(),
                              )),
                        const  SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Testy Veg Noodles",
                                style: AppWidget.LightTextFeildStyle(),
                              )),
        const                SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$59",
                                style: AppWidget.semiBooldTextFeildStyle(),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/noodles.jpg",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
    const                  SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Test Yummy yuppy Noodles",
                                style: AppWidget.semiBooldTextFeildStyle(),
                              )),
        const                 SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Testy Veg Noodles",
                                style: AppWidget.LightTextFeildStyle(),
                              )),
                const          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$59",
                                style: AppWidget.semiBooldTextFeildStyle(),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //kmljhg
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/noodles.jpg",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
        const                  SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    "Test Yummy yuppy Noodles",
                                    style: AppWidget.semiBooldTextFeildStyle(),
                                  )),
              const                SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    "Testy Veg Noodles",
                                    style: AppWidget.LightTextFeildStyle(),
                                  )),
        const                      SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    "\$59",
                                    style: AppWidget.semiBooldTextFeildStyle(),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            bread = true;
            chease = false;
            noodles = false;
            pizza = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: bread ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "images/bread.jpg",
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.cover,
                //  color: bread ? Colors.white : Colors.black,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            bread = false;
            chease = true;
            noodles = false;
            pizza = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: chease ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "images/chease.jpg",
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.cover,
                //  color: chease ? Colors.white : Colors.black,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            bread = false;
            chease = false;
            noodles = true;
            pizza = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: noodles ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "images/noodles.jpg",
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.cover,
                // color: noodles ? Colors.white : Colors.black,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            bread = false;
            chease = false;
            noodles = false;
            pizza = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: pizza ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "images/pizza.jpg",
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.cover,
                  //color: pizza ? Colors.white : Colors.black,
                )),
          ),
        ),
      ],
    );
  }
}
