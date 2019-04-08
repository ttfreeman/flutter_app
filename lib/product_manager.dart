import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct){
    print('product manager widget constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('product manager widget state created');
    return _ProductManagerState();
  }

}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Container(
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('some new product');
              });

            },
            child: Text('Add Product'),)
      ),
      Products(_products)
      ]
      );
  }
}