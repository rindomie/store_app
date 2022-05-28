import 'package:flutter/material.dart';
import 'package:store_app/config/colors.dart';

class ProductOverview extends StatefulWidget {
  const ProductOverview({Key key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
