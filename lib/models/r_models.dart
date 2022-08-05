class Recommendation {
  final int id;
  final String rTitle;
  final String imgScr;
  final String description;
  Recommendation({
    required this.id,
    required this.rTitle,
    required this.imgScr,
    required this.description,
  });
}

List<Recommendation> rCards = [
  Recommendation(
    id: 1,
    rTitle: '5 Coffee Beans You Must \nTry!',
    imgScr:
        'https://images.unsplash.com/photo-1611691934391-5a8805e0bd1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvZmZlZSUyMGJlYW5zfGVufDB8fDB8YmxhY2t8&auto=format&fit=crop&w=500&q=60',
    description:
        'A coffee bean is a seed of the Coffea plant and the source for coffee. It is the pip inside the red or purple fruit often referred to as a coffee cherry',
  ),
  Recommendation(
    id: 2,
    rTitle: '5 Coffee Cream You Must \nTry!',
    imgScr:
        'https://images.unsplash.com/photo-1544374131-ffb758e7f9b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGNvZmZlZSUyMGNyZWFtfGVufDB8fDB8YmxhY2t8&auto=format&fit=crop&w=500&q=60',
    description:
        'Unlike heavy cream and half-and-half,coffee creamer is dairy-free. Although the ingredients can vary by brand, most coffee creamers are made from a combination of water, sugar, and vegetable oil. Coffee creamer is usually heavily processed and loaded with added sugar.',
  )
];
