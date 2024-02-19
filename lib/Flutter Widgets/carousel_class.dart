import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselClass extends StatefulWidget {
  const CarouselClass({super.key});

  @override
  State<CarouselClass> createState() => _CarouselClassState();
}

class _CarouselClassState extends State<CarouselClass> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  CarouselController carouselController = CarouselController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider'),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            carouselController: carouselController,
            items: imgList.map(
              (images) {
                // this handles that loop through your list above. it can be called anything . But make sure you use it where ever its needed
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.network(
                    // .network is from internet, .asset is from your system, .file is from your phone
                    images, // like i called the 'images' here. if i used 'a' above i will still use 'a' here
                    fit: BoxFit.fill,
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
                initialPage: 0,
                height: 500,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                onPageChanged: (index, reason) {
                  setState(() {
                    pageIndex = index;
                  });
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselIndicator(
            color: Colors.blue,
            activeColor: Colors.red,
            count: imgList.length,
            index: pageIndex,
          )
        ],
      ),
    );
  }
}
