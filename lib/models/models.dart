class ProductData {
  final int id;
  final double price, rating;
  final String name, imgScr, addon, description;
  ProductData({
    required this.id,
    required this.price,
    required this.rating,
    required this.name,
    required this.addon,
    required this.imgScr,
    required this.description,
  });
}

List<ProductData> products = [
  ProductData(
    id: 1,
    price: 4.20,
    rating: 4.8,
    name: 'Cappuccino',
    imgScr:
        'https://images.unsplash.com/photo-1561047029-196d190f0713?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    addon: 'Ota Milk',
    description:
        'A cappuccino is the perfect balance of espresso, steamed milk and foam.',
  ),
  ProductData(
    id: 2,
    price: 4.7,
    rating: 4.5,
    name: 'Cappuccino',
    imgScr:
        'https://images.unsplash.com/photo-1594076789876-3dd6dcd06d0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=478&q=80',
    addon: 'Chocolate',
    description:
        'A cappuccino is the perfect balance of espresso, steamed milk and foam.',
  ),
  ProductData(
    id: 3,
    price: 3.14,
    rating: 4.7,
    name: 'Black Coffee',
    imgScr:
        'https://images.unsplash.com/photo-1621555470436-d36e9683bae5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBjb2ZmZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    addon: 'Cinnamon',
    description: 'Black coffee is a beverage made from roasted coffee beans. ',
  ),
  ProductData(
    id: 3,
    price: 5.55,
    rating: 4.4,
    name: 'Spice Coffee',
    addon: 'Cardamom',
    imgScr:
        'https://images.unsplash.com/photo-1507133750040-4a8f57021571?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    description:
        'Cardamom is a warm spice popular across the Middle East and India, where it has a long history as a coffee additive. Its flavor is a natural pairing for the fruity and bittersweet nature of coffee. It’s rich in antioxidants, and evidence has shown it may fight cancer, lower inflammation, and aid in digestion',
  ),
];
