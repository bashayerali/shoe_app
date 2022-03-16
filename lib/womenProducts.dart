
class WomenProducts {

  String productName;
  String productPrice;
  String productImage;
  String productDetails;
  bool isFave ;


  WomenProducts(this.productName,this.productPrice,this.productImage,this.productDetails,this.isFave);

}

List<WomenProducts> womenSneakersProductsList =[
  WomenProducts('Adidas Sneaker','150 SR','images/shoe1.png','',false),
  WomenProducts('Adidas Sneaker','100 SR','images/shoe2.png','',false),
  WomenProducts('Adidas Sneaker','200 SR','images/shoe3.png','',false),
  WomenProducts('Adidas Sneaker','160 SR','images/shoe4.png','',false),
  WomenProducts('Adidas Sneaker','220 SR','images/shoe5.png','',false),
  WomenProducts('Adidas Sneaker','150 SR','images/shoe6.png','',false),
];
List<WomenProducts> womenHeelsProductsList =[
  WomenProducts('Ella Heel','150 SR','images/womenHeelElla.jpg',"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",false),
  WomenProducts('Ginger Heel','100 SR','images/womenHeelGinger.jpg','',false),
  WomenProducts('Mango Heel','200 SR','images/womenHeelMango.jpg','',false),
  WomenProducts('SAINT LAURENT Heel','1600 SR','images/womenHeelSAINTLAURENT.jpg','',false),
  WomenProducts('Malone Souliers Heel','300 SR','images/womenHeelMaloneSouliers2.jpeg','',false),
  WomenProducts('Malone Souliers Heel','300 SR','images/womenHeelMaloneSouliers1.jpeg','',false),
];
List<WomenProducts> womenFlatsProductsList =[
  WomenProducts('Ella Flat','150 SR','images/womenFlatElla1.jpg','',false),
  WomenProducts('Ella Flat','100 SR','images/womenFlatElla2.jpg','',false),
  WomenProducts('Ella Flat','200 SR','images/womenFlatElla3.jpg','',false),
  WomenProducts('Ginger Flat','160 SR','images/womenFlatGinger1.jpg','',false),
  WomenProducts('Ginger Flat','220 SR','images/womenFlatGinger2.jpg','',false),
  WomenProducts('Ginger Flat','150 SR','images/womenFlatGinger3.jpg','',false),
];