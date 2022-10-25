
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;
  
  Product(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}
  class Products with ChangeNotifier{
    List<Product> _items = [
      Product(
        id:'1',
        name: '기초 프로그래밍',
        imgUrl: 
           'http://image.kyobobook.co.kr/images/book/xlarge/130/x9791188612130.jpg',
        price: 19900,
        category: '전공서적',
        description: 
        '기초적인 컴퓨터 언어를 배우는 과목',
      ),
      Product(
        id:'2',
        name: '기초 프로그래밍',
        imgUrl: 
           'http://image.kyobobook.co.kr/images/book/xlarge/130/x9791188612130.jpg',
        price: 19900,
        category: '전공서적',
        description: 
        '기초적인 컴퓨터 언어를 배우는 과목',
      ),
      Product(
        id:'3',
        name: '기초 프로그래밍',
        imgUrl: 
           'http://image.kyobobook.co.kr/images/book/xlarge/130/x9791188612130.jpg',
        price: 19900,
        category: '전공서적',
        description: 
        '기초적인 컴퓨터 언어를 배우는 과목',
      ),
      Product(
        id:'4',
        name: '기초 프로그래밍',
        imgUrl: 
           'http://image.kyobobook.co.kr/images/book/xlarge/130/x9791188612130.jpg',
        price: 19900,
        category: '전공서적',
        description: 
        '기초적인 컴퓨터 언어를 배우는 과목',
      ),
      Product(
        id:'5',
        name: '기초 프로그래밍',
        imgUrl: 
           'http://image.kyobobook.co.kr/images/book/xlarge/130/x9791188612130.jpg',
        price: 19900,
        category: '전공서적',
        description: 
        '기초적인 컴퓨터 언어를 배우는 과목',
      ),
      Product(
        id:'6',
        name: '기초 프로그래밍',
        imgUrl: 
           'http://image.kyobobook.co.kr/images/book/xlarge/130/x9791188612130.jpg',
        price: 19900,
        category: '전공서적',
        description: 
        '기초적인 컴퓨터 언어를 배우는 과목',
      ),
    ];
    List<Product> get items {
      return [..._items];
    }
  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id); 
  }
}
