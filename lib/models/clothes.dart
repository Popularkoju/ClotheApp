// ignore_for_file: non_constant_identifier_names

class Clothes {
  String title;
  String subtitile;
  String price;
  String imageUrl;
  List<String> detailsUrl;

  Clothes(
      this.title, this.subtitile, this.price, this.imageUrl, this.detailsUrl);

  static List<Clothes> generateClothes() {
    return [
      Clothes(
          'Gucci Oversize ',
          'Hoddie',
          'RS.999.8',
          'assets/images/hodie_2_yel.jpg',
          ['assets/images/hodie_2_yel.jpg', 'assets/images/hodie_1.jpg']),
      Clothes('Cotton Pants ', 'Korean Pants', 'Rs.2315.23',
          'assets/images/pant_1.jpg', [
        'assets/images/pant_1.jpg',
        'assets/images/pant_3.jpg',
        'assets/images/pants_2.png'
      ]),
      Clothes('Gucci Oversize ', 'Hoddie', '99.8', 'assets/images/kurtha_1.jpg',
          ['assets/images/kurha_1.png', 'assets/images/Kurtha_2.png']),
      Clothes(
          'Cotton Pants ',
          'Korean Pants',
          'Rs.1015.23',
          'assets/images/pant_3.jpg',
          ['assets/images/pants_2.png', 'assets/images/pant_1.jpg']),
    ];
  }
}
