import 'package:flutter/material.dart';
import 'package:withoutgetx/model/product_model.dart';
import 'package:withoutgetx/sceen/card_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //final allheadphone = ProductModel;

  //List<ProductModel> cardList = [];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Hi-Fi Shop & service',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('Loram Maintenance of Way'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text('maintenance equipment and services provider'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product 41',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Show all',
                      style: TextStyle(fontSize: 15, color: Colors.blue))
                ],
              ),
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.2,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                var headPhoneData = productList[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CardPage(
                              productModel:headPhoneData,headphone: index,
                            )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  "${productList[index].image}",
                                  width: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Text(
                              "${productList[index].name}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${productList[index].price}"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product 41',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Show all',
                    style: TextStyle(fontSize: 15, color: Colors.blue))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
