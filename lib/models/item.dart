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
final Item graphicTarjet = Item(0, "Nvidia 1080 TI","Tarjeta Gráfica", "https://http2.mlstatic.com/msi-gtx-1080-ti-founders-edition-tarjetas-graficas-gtx-1080-D_NQ_NP_832252-MCO31459469834_072019-F.jpg", "La tarjeta gráfica GeForce® GTX 1080 Ti es nuestra GPU insignia para videojuegos de la serie 10. La tarjeta ofrece una potencia inigualable, memoria GDDR5X de 11 Gbps de próxima generación y un increíble búfer de cuadros de 11 GB", sellers);

final Item processor = Item(1, "Intel Core i9 9900k","Procesador", "https://thotcomputacion.com.uy/wp-content/uploads/2019/01/1905517s-l300_f78ef5f3a8544dadaf11e6099f64f97e.png", "Los nuevos procesadores informáticos Intel® Core ™ de novena generación, el primer procesador informático de uso general desbloqueado. Junto con la memoria Intel® Optane ™, acelera la carga y ejecución de juegos. Con hasta 5 GHz y multitarea en 16 formas, lleve su creatividad al siguiente nivel con la potencia que necesita para crear, editar y compartir contenido.", sellers);

final Item videoCard = Item(2, "Asus Extreme X550","Placa de video", "https://www.asus.com/media/global/products/vQBHC8NxcDNeEY8D/P_600.jpg", "ASUS Extreme AX550GE está equipado con innovaciones exclusivas de ASUS y ATI Radeon X550 VPU, una solución PCI-Express "'verdadera'". Extreme AX550GE es totalmente compatible con el bus PCI Express, el nuevo estándar de la industria de PC para ofrecer el máximo rendimiento en tiempo real para sus aplicaciones de software intensivas en gráficos.", sellers);

final Item hdd = Item(3,"HDD" ,"Disco duro","https://images-na.ssl-images-amazon.com/images/I/719KsKDMM%2BL._AC_SX466_.jpg", "Una unidad de disco duro (HDD) es un dispositivo de almacenamiento de computadora no volátil que contiene discos magnéticos o platos que giran a altas velocidades. Es un dispositivo de almacenamiento secundario utilizado para almacenar datos permanentemente, siendo la memoria de acceso aleatorio (RAM) el dispositivo de memoria principal", sellers);

final Item ram = Item(4, "RAM", "Memoria RAM","https://sc02.alicdn.com/kf/HTB1MQ6BX42rK1RkSnhJq6ykdpXav/2018-Ram-Memory-2GB-4GB-8GB-DDR2.jpg", "Es la memoria que, en un equipo informático, es utilizada por un procesador para recibir instrucciones y guardar los resultados. Se puede decir que la RAM es el área de trabajo de un software de computadora", sellers);

final Item powerSupply = Item(5, "Power Supply","Fuente de alimentación", "https://www.electronicaembajadores.com/datos/fotos/articulos/grandes/sa/sa5c/sa5catx1.jpg", "Una fuente de alimentación es un componente que suministra energía a al menos una carga eléctrica. Por lo general, convierte un tipo de energía eléctrica en otro, pero también puede convertir una forma diferente de energía, como la solar, mecánica o química, en energía eléctrica.", sellers);

//Recomendation of items
final List<Item> recomendation = [graphicTarjet,processor,videoCard,hdd,ram,powerSupply];