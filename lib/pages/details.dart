import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/bread.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
    const          SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Test Bread Chease",
                      style: AppWidget.semiBooldTextFeildStyle(),
                    ),
                    Text(
                      "Test Veg Bread Chease",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                  ],
                ),
              const  Spacer(),
                //GestureDetector
                InkWell(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
      const          SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiBooldTextFeildStyle(),
                ),
      const          SizedBox(
                  width: 20.0,
                ),
                //GestureDetector
                InkWell(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
      const      SizedBox(
              height: 20.0,
            ),
            Text(
              "The bread chese is the best food of the snnacks.",
              maxLines: 3,
              style: AppWidget.LightTextFeildStyle(),
            ),
      const      SizedBox(height: 30.0,),
            Row(children: [
              Text("Delivart Time", style: AppWidget.semiBooldTextFeildStyle(),),
          const    SizedBox(width: 25.0,),
          const    Icon(Icons.alarm, color: Colors.black54,),
          const    SizedBox(width: 5.0,),
              Text("30 min", style: AppWidget.semiBooldTextFeildStyle(),)
            ],),
          const  Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Total Price", style: AppWidget.semiBooldTextFeildStyle(),),
                  Text("\$49", style: AppWidget.HeadlineTextFeildStyle(),)
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("Add to cart", style: const TextStyle (color: Colors.white, fontSize: 18.0,),),
          const          SizedBox(width: 30.0,),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.grey, borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                    ),
          const          SizedBox(width: 10.0,),
                  ],),
                )
              ],),
            )
          ],
        ),
      ),
      
    );
  }
}
