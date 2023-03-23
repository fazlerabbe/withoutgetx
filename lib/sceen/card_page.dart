import 'package:flutter/material.dart';
import 'package:withoutgetx/model/product_model.dart';

class CardPage extends StatefulWidget {
  ProductModel? productModel;
  var headphone;
  CardPage({Key? key, this.headphone, this.productModel}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  var netTotal;

  // void getTotal() {
  //   netTotal = widget.productModel!
  //       .map((item) => item.price!.toInt() * item.quantity)
  //       .reduce((value, element) => value + element);
  // }

  @override
  void initState() {
    // TODO: implement initState
    //widget.productModel!  ? getTotal() : null;
    print("ikhdfdasgasiuasgifruisrgfsdgfiusdgfiuosdghfiudg");
    super.initState();
  }

  var mylist = List.filled(productList.length, 1);

  @override
  Widget build(BuildContext context) {
    //var getData = widget.productModel;
    var list = productList[widget.headphone!];

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text(
                'Order details',
                style: TextStyle(color: Colors.black),
              ),
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  //Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.5),
                        borderRadius: BorderRadius.circular(16)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            body: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              'My Card',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 160,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(.4),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "${list.image}",
                                      width: double.infinity,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${list.name}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5),
                                        child: Text("\$${list.price}"),
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              // widget.productModel!.quantity--;
                                              setState(() {});
                                            },
                                            child: Icon(Icons.remove),
                                          ),
                                          Text(
                                              "${widget.productModel!.quantity}"),
                                          InkWell(
                                            onTap: () {
                                              // widget.productModel![index].quantity++;
                                              // getTotal();
                                              setState(() {});
                                            },
                                            child: Icon(Icons.add),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              // widget.cartList!.removeAt(index);
                                              // getTotal();
                                              setState(() {});
                                            },
                                            child: Icon(Icons.delete),
                                          ),
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
            )));
  }
}
