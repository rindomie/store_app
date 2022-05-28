import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screen/drawer_side.dart';
import 'package:store_app/screens/home_screen/singal_products.dart';
import 'package:store_app/config/colors.dart';
import 'package:store_app/screens/product_overview/product_overview.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key key}) : super(key: key);

  Widget _buildSliderImage() {
    return Column(
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.GNVQ_ZE_M294qd-Qd12ylwHaD3?w=275&h=180&c=7&r=0&o=5&pid=1.7"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.9g7OFocrunYQlIvJJs8yAwHaFx?w=266&h=207&c=7&r=0&o=5&pid=1.7"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: const NetworkImage(
                      "https://th.bing.com/th/id/OIP.aMpndUIcliqXQUgt1VVg0AHaCw?w=304&h=130&c=7&r=0&o=5&pid=1.7"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.ZY-jIljovcrgO62oEl2-KQHaFx?w=216&h=180&c=7&r=0&o=5&pid=1.7"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //5th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.U0CCr4ORAb3Rcw8nDdCYIwHaFx?w=217&h=180&c=7&r=0&o=5&pid=1.7"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
    return const Center(
      child: const CircularProgressIndicator(),
    );
  }

  Widget _buildCosmeticProducts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Produk Kosmetik',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Lihat Semua',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(),
                    ),
                  );
                },
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.R_VT0ULegTvPVaiOMyvjVgHaIE?w=183&h=201&c=7&r=0&o=5&pid=1.7',
                productName: 'Bedak Viral',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.6pRyUQU8OjkHAmOXkdYhLQHaFo?w=240&h=183&c=7&r=0&o=5&pid=1.7',
                productName: 'Lipstick Merona',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.zyHsMBCi7OYqQI6IGcSt-AHaLW?w=128&h=197&c=7&r=0&o=5&pid=1.7',
                productName: 'Brush Blushon',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.JOiX7iH86Qa3iVm-bgYWyQHaIB?w=159&h=180&c=7&r=0&o=5&pid=1.7',
                productName: 'Eyeliner Cetar',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.pjL4tquRqvmVYbHFvLpz7AHaHU?w=167&h=180&c=7&r=0&o=5&pid=1.7',
                productName: 'Kuas Touchup',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSkincareProducts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Produk Skin Care',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Lihat Semua',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage:
                    'https://th.bing.com/th?q=REN+Clean+SkinCare&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-ID&cc=ID&setlang=en&adlt=strict&t=1&mw=247',
                productName: 'Ren Clean',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.fUS2rhs2r__65bTQgGt71gHaHa?w=180&h=180&c=7&r=0&o=5&pid=1.7',
                productName: 'Inglot Care',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.zd3jujMfBzibhxyL3OUybwHaHa?w=173&h=180&c=7&r=0&o=5&pid=1.7',
                productName: 'Neutrogena',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.Cbg4k7eYikcIfqDBYMf-DQHaHa?w=191&h=192&c=7&r=0&o=5&pid=1.7',
                productName: 'Hydra Facial',
              ),
              SingalProduct(
                productImage:
                    'https://th.bing.com/th/id/OIP.hbv2fDngDtuKc_x8qaDQxQHaIn?w=155&h=180&c=7&r=0&o=5&pid=1.7',
                productName: 'Cetaphil',
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Widget listTile({IconData icon, String title}) {
  //   return ListTile(
  //     leading: Icon(
  //       icon,
  //       size: 32,
  //     ),
  //     title: Text(
  //       title,
  //       style: TextStyle(color: Colors.black45),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DrawerSide(),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          actions: [
            const CircleAvatar(
              radius: 15,
              backgroundColor: const Color(0xffd4d181),
              child: Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xffd4d181),
                child: Icon(
                  Icons.shop,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          backgroundColor: primaryColor),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          // height: double.infinity,
          // width: double.infinity,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     fit: BoxFit.cover,
          //     image: AssetImage('assets/background.png'),
          //   ),
          // ),
          child: ListView(
            children: [
              _buildSliderImage(),
              // Container(
              //   height: 150,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       fit: BoxFit.cover,
              //       image: NetworkImage(
              //           'https://th.bing.com/th/id/OIP.0mcJOk3qrzOH-T_4WZlBrQHaEM?w=296&h=180&c=7&r=0&o=5&pid=1.7'),
              //     ),
              //     color: Colors.red,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         flex: 1,
              //         child: Container(
              //           child: Column(
              //             children: [
              //               Padding(
              //                 padding:
              //                     const EdgeInsets.only(right: 110, bottom: 10),
              //                 child: Container(
              //                   height: 50,
              //                   width: 100,
              //                   decoration: BoxDecoration(
              //                     color: Colors.yellowAccent.shade100,
              //                     borderRadius: BorderRadius.only(
              //                         bottomRight: Radius.circular(30),
              //                         bottomLeft: Radius.circular(0),
              //                         topLeft: Radius.circular(10)),
              //                   ),
              //                   child: Center(
              //                     child: Text(
              //                       'Store App',
              //                       style: TextStyle(
              //                         fontSize: 20,
              //                         color: Colors.white,
              //                         shadows: [
              //                           BoxShadow(
              //                               color: Colors.green,
              //                               blurRadius: 3,
              //                               offset: Offset(1, 1))
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           child: Column(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(
              //                   top: 30,
              //                 ),
              //                 child: Text(
              //                   'Diskon 30%',
              //                   style: TextStyle(
              //                       fontSize: 40,
              //                       color: Colors.yellowAccent,
              //                       fontWeight: FontWeight.bold),
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.only(
              //                   left: 10,
              //                   top: 10,
              //                 ),
              //                 child: Text(
              //                   'Semua varian produk!',
              //                   style: TextStyle(
              //                     color: Colors.yellowAccent,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 30,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              _buildCosmeticProducts(context),
              _buildSkincareProducts(context),
              // _buildSkincareProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
