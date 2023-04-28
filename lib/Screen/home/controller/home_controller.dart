import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:oonzoo_app/Screen/auth/sign_in/view/sign_in_view.dart';

class HomeController extends GetxController {
  final auth = FirebaseAuth.instance;
  bool isLoding = false;

  int activeIndex = 0;

  void smoothIndicator(index) {
    activeIndex = index;
    update();
  }

  List<String> carousalImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2020/img21/GWUnrec_BOB/WA3000._CB592962828_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img18/Lawn_Garden/Ud/SummerGD/Heros/PC-HERO-3000X1200._CB591025573_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2020/Vernac/2021/Gw-Hero/Mobile_tall_Hero_revision_3000x1200._CB604857279_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img17/Home/AmazonTV/Ravina/Push/3000x1200_V1._CB591770643_.jpg',
  ];
  List<String> categoryImages = [
    'https://m.media-amazon.com/images/I/510YZx4v3wL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/61S9aVnRZDL._AC_UL400_.jpg',
    'https://m.media-amazon.com/images/I/41O9c-uunDL._AC_SY200_.jpg',
    'https://m.media-amazon.com/images/I/41heWun9O4L._AC_SY200_.jpg',
    'https://m.media-amazon.com/images/I/21lrB5796uL._AC_SY200_.jpg',
    'https://m.media-amazon.com/images/I/31K3PaZ2ytL._AC_SY200_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/Symbol/2021/wrs/mencombo_low._SY304_CB666768535_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Electronics/Clearance/Clearance_store_Desktop_CC_1x._SY304_CB628315133_.jpg',
  ];
  List<String> categoryName = [
    'Phone',
    'Watch',
    'Headphone',
    'Speakers',
    'Power bank',
    'Air pods',
    'Cloths',
    'Laptops',
  ];
  List<String> productImages = [
    'https://images-na.ssl-images-amazon.com/images/I/41gVQVnCOEL._SX160_QL100_AC_SCLZZZZZZZ_.jpg',
    'https://m.media-amazon.com/images/I/81O3rfdBaaL._UL1500_.jpg',
    'https://m.media-amazon.com/images/I/41oFAXwWB4L.jpg',
    'https://m.media-amazon.com/images/I/41hsEMLKl9L._SX300_SY300_QL70_FMwebp_.jpg',
    'https://m.media-amazon.com/images/I/5160RpPgKrS._SX425_.jpg',
    'https://m.media-amazon.com/images/I/61+VJT8U-LL._SX425_.jpg',
    'https://m.media-amazon.com/images/I/51JM8TpHVSL._SX425_.jpg',
    'https://m.media-amazon.com/images/I/61QRgOgBx0L._SX679_.jpg',
    'https://m.media-amazon.com/images/I/71Ftzmh3XWL._SX679_.jpg',
    'https://m.media-amazon.com/images/I/71hmqIQJFdL._SX569_.jpg',
  ];
  List<double> productPrice = [
    299,
    625,
    485,
    16490,
    899,
    3499,
    499,
    19999,
    10999,
    92499,
  ];
  List<String> productName = [
    'Shocknshop Digital Sports Square Dial LED Unisex Stainless Steel Strap Watch for Men and Womens -WCH70',
    "AUREX Analogue Men's Watch (Black Dial Gold Colored Strap)",
    "AUREX Analogue Men's Watch (Black Dial Gold Colored Strap)",
    "Samsung Galaxy M14 5G (Smoky Teal, 6GB, 128GB Storage)",
    'boAt Rockerz 245v2 Bluetooth Wireless in Ear Earphones',
    'boAt Rockerz 551ANC Newly Launched Hybrid Active Noise Cancellation Headphones',
    'boAt Bassheads 220 Wired in Ear Earphones(Indi Blue)',
    'OnePlus Nord CE 3 Lite 5G (Pastel Lime, 8GB RAM, 128GB Storage)',
    'realme narzo N55 (Prime Blue, 4GB+64GB) 33W Segment Fastest Charging',
    'HP Pavilion 14 11th Gen Intel Core i7 16GB/1TB SSD 14 inches Laptop, FHD Micro-Edge Anti-Glare Display/Iris X Graphics/Backlit KB/B&O Audio/Fingerprint Reader/Windows 11 Ready/1.41kg',
  ];

  void signOut() {
    auth.signOut();
    Get.offAll(() => ScreenSignIn());
  }
}
