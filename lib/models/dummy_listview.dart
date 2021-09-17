class ProductList {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ProductList({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
  });
}

// ignore: non_constant_identifier_names
List<ProductList> Dummydata = [
  
  new ProductList(
    name: "First",
    message: "Any thing",
    time:  "9:00",
    avatarUrl: "images/Login_image.png",    
  ),
  new ProductList(
    name: "Second",
    message: "List",
    time:  "8:30",
    avatarUrl: "images/Login_image.png",  
  ),
  new ProductList(
    name: "Third",
    message: "Wires",
    time:  "7:00",
    avatarUrl: "images/Login_image.png",    
  ),
  new ProductList(
    name: "Forth",
    message: "Description",
    time:  "6:00",
    avatarUrl: "images/Login_image.png",    
  ),
];
