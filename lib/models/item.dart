import 'package:flutter/material.dart';

import 'seller.dart';

class Item {
  final int id;
  final String name;
  final String imageUrl;
  final String description;
  final List<Seller> sellers;
  final String type;

  Item(this.id, this.name, this.type,this.imageUrl, this.description, this.sellers);
}


//Sellers
final Seller turet = Seller("Turet", "Unilago 201", 500);

final Seller amazon = Seller("Amazon", "Amazon.com", 480);

final Seller wish = Seller("Wish", "Wish.com", 380);

final Seller mercadoLibre = Seller("Mercado Libre", "MercadoLibre.com", 420);

//List sellers 
final List<Seller> sellers = [turet,amazon,wish,mercadoLibre];

//Items
final Item graphicTarjet = Item(0, "Nvidia 1080 TI","Tarjeta Gráfica", "https://http2.mlstatic.com/msi-gtx-1080-ti-founders-edition-tarjetas-graficas-gtx-1080-D_NQ_NP_832252-MCO31459469834_072019-F.jpg", "The GeForce® GTX 1080 Ti graphics card is our flagship GPU for 10-series video games. The card offers unmatched power, next-generation GDDR5X 11 Gbps memory and an incredible 11 GB frame buffer", sellers);

final Item processor = Item(1, "Intel Core i9 9900k","Procesador", "https://thotcomputacion.com.uy/wp-content/uploads/2019/01/1905517s-l300_f78ef5f3a8544dadaf11e6099f64f97e.png", "The new 9th generation Intel® Core ™ computer processors, the first general purpose computer processor unlocked. Together with Intel® Optane ™ memory, it speeds up the loading and execution of games. With up to 5 GHz and multitasking in 16 ways, take your creativity to the next level with the power you need to create, edit and share content.", sellers);

final Item videoCard = Item(2, "Asus Extreme X550","Placa de video", "https://www.asus.com/media/global/products/vQBHC8NxcDNeEY8D/P_600.jpg", "ASUS Extreme AX550GE is equipped with ASUS exclusive innovations and ATI Radeon X550 VPU,a “true” PCI-Express solution. Extreme AX550GE fully supports the PCI Express bus, the newest PC industry standard for delivering maximum real-time performance for your graphics-intensive software applications.", sellers);

final Item hdd = Item(3,"HDD" ,"Disco duro","https://images-na.ssl-images-amazon.com/images/I/719KsKDMM%2BL._AC_SX466_.jpg", "A hard disk drive (HDD) is a non-volatile computer storage device containing magnetic disks or platters rotating at high speeds. It is a secondary storage device used to store data permanently, random access memory (RAM) being the primary memory device", sellers);

final Item ram = Item(4, "RAM", "Memoria RAM","https://sc02.alicdn.com/kf/HTB1MQ6BX42rK1RkSnhJq6ykdpXav/2018-Ram-Memory-2GB-4GB-8GB-DDR2.jpg", "it is the memory that, in a computer equipment, is used by a processor to receive instructions and save the results. It can be said that RAM is the work area of ​​a computer software", sellers);

final Item powerSupply = Item(5, "Power Supply","Fuente de alimentación", "https://www.electronicaembajadores.com/datos/fotos/articulos/grandes/sa/sa5c/sa5catx1.jpg", "A power supply is a component that supplies power to at least one electric load. Typically, it converts one type of electrical power to another, but it may also convert a a different form of energy – such as solar, mechanical, or chemical - into electrical energy.", sellers);

//Recomendation of items
final List<Item> recomendation = [graphicTarjet,processor,videoCard,hdd,ram,powerSupply];