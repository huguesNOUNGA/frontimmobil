import 'package:real_estate/model/house.dart';

final house1 = House(
    imageUrl: 'assets/chambres/c1.jpg', 
    address: 'Ndogbong, Citadelle ', 
    description: "Chambre douche cuisine ngobong dauphine etage , distance 75m du goudron, balcon individuel, forage gratuit, compteur prepayer, parking moto ", 
    price: 40000, bathRooms: 1,
    bedRooms: 1,
    sqFeet: 2.34, 
    time: 15, 
    garages: 0, 
    moreTmageUrl: [
        'assets/chambres/c1.jpg',
        'assets/chambres/c11.jpg',
        'assets/chambres/c12.jpg',
        'assets/chambres/c13.jpg',
        'assets/chambres/c14.jpg',
        'assets/chambres/c15.jpg',
    ],
    isFav: false,
);
final house2 = House(
    imageUrl: 'assets/chambres/c2.jpg', 
    address: 'Ange Raphael', 
    description: "Chambre moderne disponible a Ange Raphael au prix de 40000fcfa avec douche , placardm coin cuisine, balcon personnel, dans la barriere a l'immeuble ", 
    price: 40000, bathRooms: 1,
    bedRooms: 1,
    sqFeet: 2.34, 
    time: 15, 
    garages: 0, 
    moreTmageUrl: [
        'assets/chambres/c2.jpg',
        'assets/chambres/c21.jpg',
        'assets/chambres/c22.jpg',
        'assets/chambres/c23.jpg',
        'assets/chambres/c24.jpg',
    ],
    isFav: false,
);
final house3 = House(
    imageUrl: 'assets/chambres/c3.jpg', 
    address: 'Bonamoussadi ', 
    description: "Chambre moderne nouvellement construit a Bonamoussadi au rez de chaussee d'un imeuble. un placard, une douche, une cuisine, un armoire, une veranda, compteur prepayer, forage, parking ", 
    price: 70000, bathRooms: 1,
    bedRooms: 1,
    sqFeet: 2.34, 
    time: 15, 
    garages: 1, 
    moreTmageUrl: [
        'assets/chambres/c3.jpg',
        'assets/chambres/c31.jpg',
        'assets/chambres/c32.jpg',
        'assets/chambres/c33.jpg',
        'assets/chambres/c34.jpg',
        'assets/chambres/c35.jpg',
        'assets/chambres/c36.jpg',
        'assets/chambres/c37.jpg',
    ],
    isFav: false,
);
final house4 = House(
    imageUrl: 'assets/chambres/c4.jpg', 
    address: 'Ndogbong, citadelle ', 
    description: "Chambre douche cuisine ngobong dauphine etage , distance 75m du goudron, balcon individuel, forage gratuit, compteur prepayer, parking moto , traveaux a faire par le bailleur ", 
    price: 40000, bathRooms: 1,
    bedRooms: 1,
    sqFeet: 2.34, 
    time: 15, 
    garages: 0, 
    moreTmageUrl: [
        'assets/chambres/c4.jpg',
        'assets/chambres/c41.jpg',
        'assets/chambres/c42.jpg',
        'assets/chambres/c43.jpg',
        'assets/chambres/c44.jpg',
        'assets/chambres/c42.jpg',
        
    ],
    isFav: false,
);
final house5 = House(
    imageUrl: 'assets/chambres/c5.jpg', 
    address: 'Lobessou, Douala ', 
    description: "Grande chambre moderne nouvellement construite a logbessou. elle est carrelee, ayant un coin cuisine, une grande douche, fenetres couilissantes, un blacon personnel, 2 portes. c'es dans la barriere au premier etage espace individuel. dans la barriere et avec parking pour moto. c'est a 2 min de marche pour le camous IUC de logbessou. equ forage, lumiere compteur eneo individuel", 
    price: 40000, bathRooms: 1,
    bedRooms: 1,
    sqFeet: 2.34, 
    time: 15, 
    garages: 0, 
    moreTmageUrl: [
        'assets/chambres/c5.jpg',
        'assets/chambres/c51.jpg',
        'assets/chambres/c52.jpg',
        'assets/chambres/c53.jpg',
        'assets/chambres/c54.jpg',
        'assets/chambres/c53.jpg',
        'assets/chambres/c52.jpg',
    ],
    isFav: false,
);

final house6 = House(
    imageUrl: 'assets/chambres/c6.jpg', 
    address: 'Santa Barbara ', 
    description: "chambre moderne a louer a santa barbara a bonamoussadi avec cuisine, douche, balcon personnel, compteur prepayer, eau forage ", 
    price: 45000, bathRooms: 1,
    bedRooms: 1,
    sqFeet: 2.34, 
    time: 15, 
    garages: 0, 
    moreTmageUrl: [
        'assets/chambres/c6.jpg',
        'assets/chambres/c61.jpg',
        'assets/chambres/c62.jpg',
        'assets/chambres/c63.jpg',
        'assets/chambres/c64.jpg',
        'assets/chambres/c65.jpg',
        'assets/chambres/c62.jpg',
    ],
    isFav: false,
);

final house7 = House(
    imageUrl: 'assets/chambres/c7.jpg', 
    address: 'PK13, china mall ', 
    description: "chambre moderne a louer a pk13  avec cuisine, douche, balcon personnel, compteur prepayer, eau forage ", 
    price: 35000, bathRooms: 1,
    bedRooms: 1,
    sqFeet: 2.34, 
    time: 15, 
    garages: 0, 
    moreTmageUrl: [
        'assets/chambres/c7.jpg',
        'assets/chambres/c71.jpg',
        'assets/chambres/c72.jpg',
        'assets/chambres/c73.jpg',
        'assets/chambres/c74.jpg',
        'assets/chambres/c75.jpg',
        'assets/chambres/c76.jpg',
    ],
    isFav: false,
);

 final List<House> houseListChambre = [
        house1,
        house2,
        house3,
        house4,
        house5,
        house6,
        house7,
    ];

    List<String> categoryListChambre = [
        '<100.000 FCFA',
        'For sale',
        '1 bed room',
        '0-1 Garages',
        '0-1 kitchen'
    ];