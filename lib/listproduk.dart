import  'package:flutter/material.dart';
//import  terlebih  dahulu  halaman  yang  diperlukan 
import  './detail_produk.dart';
//Top  Level/Root
void  main()  =>  runApp(MyApp());


class  MyApp  extends  StatelessWidget  {
@override

Widget  build(BuildContext  context)  {

return  MaterialApp(
title:  'First  App',

home:  MyHomePage(),
);
}
}

class  MyHomePage  extends  StatelessWidget  { @override
Widget  build(BuildContext  context)  {
return  Scaffold(

appBar:  AppBar(title:  Text("List Produk")),

body:  ListView(
shrinkWrap:  true,

padding:  const  EdgeInsets.fromLTRB(2.0,  10.0,  2.0,  10.0),

children:  <Widget>[

new  GestureDetector(

onTap:  ()  {

Navigator.of(context).push(new  MaterialPageRoute(

builder:  (BuildContext  context)  =>  DetailProduk(
name:  "ACER",
description:  "Acer adalah pabrikan laptop yang termasuk dalam daftar lima besar produsen laptop terbesar di dunia. Produk Acer antara lain adalah desktop, notebook, penyimpanan data dan lain sebagainya. Tak ayal ini yang membuat kita tidak perlu susah payah untuk menemukan laptop ini. Banyak kelebihan maupun kekurangan laptop ini, namun kembali lagi kepada kebutuhan masing-masing.",
price:  1000,
image:  "acer.jpg", star:  1,
),
));
},

child:  ProductBox(

name:  "ACER",
description:  "Acer adalah....", 
price:  1000,
image:  "acer.jpg",),
),


new  GestureDetector( 
  onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( 
  builder:  (BuildContext  context)  =>  DetailProduk(
name:  "ASUS",
description:  "Pada tahun 2014 Asus menggandeng PT Dragon Computer & Communication untuk menjadi distributor utama notebook dan tablet di Indonesia dan berhasil menjadi merek nomor satu hingga saat ini (menurut data IDC dan GFK). Asus pada 2005 menjual papan induk lebih banyak dari perusahaan lainnya, termasuk 30 juta pada 2004. Angka ini termasuk kontrak merek lain. Asus juga memproduksi komponen untuk perusahaan lain, termasuk PS2 Sony dan Apple Ipod, iBook, dll ",

price:  800,
image:  "asus.jpg", star:  4,
),
));
},
child:  ProductBox( 
name:  "ASUS",
description:  "Asus adalah...",  
price:  800,
image:  "asus.jpg",)),



new  GestureDetector( 
  onTap:  ()  {
Navigator.of(context).push(
  new  MaterialPageRoute( 
    builder:  (BuildContext  context)  =>  DetailProduk(
name:  "HP",
description:  "Hewlett-Packard Company NYSE: HPQ, dikenal umum sebagai HP, adalah salah satu perusahaan teknologi informasi terbesar dunia. Hewlett-Packard dibangun oleh dua orang yang bernama Bill Hewlett dan Dave Packard.",

price:  2000,
image:  "hp.jpg", star:  3,
),
));
},

child:  ProductBox( name:  "HP",
description:  "HP adalah...", price:  2000,
image:  "hp.jpg",),
),


new  GestureDetector( onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( builder:  (BuildContext  context)  =>  DetailProduk(
name:  "MACINTOS",
description:  "MacBook adalah seri komputer jinjing Macintosh yang dibuat oleh Apple Inc. dari awal tahun 2006 hingga akhir tahun 2011. MacBook diperkenalkan pada bulan Mei 2006, menggantikan seri iBook G4 dan PowerBook 12-inci, sekaligus sebagai bagian transisi Apple dari prosesor PowerPC ke Intel.",

price:  1500,
image:  "mac.jpg", star:  3,
),
));
},
child:  ProductBox( 
name:  "MACINTOS",
description:"Mac adalah...", 
price:  1500,
image:  "mac.jpg",),
),


new  GestureDetector( onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( builder:  (BuildContext  context)  =>  DetailProduk(
name:  "SAMSUNG",
description:  "Samsung sendiri sudah dikenal menawarkan spesifikasi kece pada produk gawai seperti smartphone jadi tak ada salahnya jika berharap produk laptop-nya bakal secanggih smartphone-nya.",
price:  100,
image:  "samsung.jpg", star:  5,
),
));
},

child:  ProductBox( name:  "SAMSUNG",
description:  "Samsung adalah...", 
price:  100,
image:  "samsung.jpg",
),	),
],
));
}}

//menggunakan  widget  StatelessWidget
class  ProductBox  extends  StatelessWidget  {
//deklarasi  variabel  yang  diterima  dari  MyHomePage
ProductBox({Key  key,  this.name,  this.description,  this.price,  this.image})
:  super(key:  key);
//menampung  variabel  yang  diterima  untuk  dapat  digunakan  pada  class  ini
final  String  name;
final  String  description; 
final  int  price;
final  String  image;

Widget  build(BuildContext  context)  {
//menggunakan  widget  container 
return  Container(
//padding
      padding:  EdgeInsets.all(2),
      //  height:  120,
      //menggunakan  widget  card 
      child:  Card(
      //membuat  tampilan  secara  horisontal  antar  image  dan  deskripsi 
      child:  Row(mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
      //children  digunakan  untuk  menampung  banyak  widget 
      children:  <Widget>[
      Image.asset( "assets/appimages/"  +  image, width:  150,
      ),
      Expanded(
      //child  digunakan  untuk  menampung  satu  widget 
      child:  Container(
      padding:  EdgeInsets.all(5),
      //membuat  tampilan  secara  vertikal 
      child:  Column(
      mainAxisAlignment:  MainAxisAlignment.start,
      //ini  isi  tampilan  vertikal  tersebut 
      children:  <Widget>[
      //menampilkan  variabel  menggunakan  widget  text 
      Text(this.name,
      style:  TextStyle(fontWeight:  FontWeight.bold,)), Text(this.description),
      Text(
      "Price:  "  +  this.price.toString(), style:  TextStyle(color:  Colors.red),
      ),
      //menampilkan  widget  icon    dibungkus  dengan  row 
      Row(
      children:  <Widget>[ Row(
      children:  <Widget>[
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,),
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,), 
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,), 
      Icon(Icons.star,  size:  10,  color:  Colors.orange),
      ],
      )

      ],
      )
      ],
      )))
      ])));
      }
      }
