class Product {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  // Format harga: 450000 menjadi Rp 450.000
  String get formattedPrice {
    final s = price.toStringAsFixed(0);
    final buffer = StringBuffer();

    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) {
        buffer.write('.');
      }
      buffer.write(s[i]);
    }

    return 'Rp $buffer';
  }
}

const List<Product> dummyProducts = [
  Product(
    id: 1,
    name: 'Sepatu Lari',
    price: 450000,
    imageUrl: 'https://picsum.photos/seed/sepatu/400/300',
    description: 'Sepatu lari ringan dengan sol empuk untuk latihan harian.',
  ),
  Product(
    id: 2,
    name: 'Tas Ransel',
    price: 275000,
    imageUrl: 'https://picsum.photos/seed/ransel/400/300',
    description: 'Ransel 20 liter dengan slot laptop 14 inci.',
  ),
  Product(
    id: 3,
    name: 'Jam Tangan',
    price: 820000,
    imageUrl: 'https://picsum.photos/seed/jam/400/300',
    description: 'Jam tangan analog tahan air hingga 50 meter.',
  ),
  Product(
    id: 4,
    name: 'Headphone',
    price: 650000,
    imageUrl: 'https://picsum.photos/seed/headphone/400/300',
    description: 'Headphone nirkabel dengan baterai tahan 30 jam.',
  ),
  Product(
    id: 5,
    name: 'Botol Minum',
    price: 95000,
    imageUrl: 'https://picsum.photos/seed/botol/400/300',
    description: 'Botol stainless 750 ml, menjaga suhu hingga 12 jam.',
  ),
];
