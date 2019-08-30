import 'package:flutter/material.dart';

Color blue = Color(0xff279aff), grey = Color(0xff9f9f9f);

List<String> gameCategories = [
  "Action",
  "Fantasy",
  "Science fiction",
  "Horror",
  "Thriller",
  "Survival",
  "Historical",
  "Stealth",
  "Comedy",
  "Business",
  "Drama",
  "Non-fiction",
  "Sandbox",
  "Educational",
  "Kids",
  "Open world"
];

List<Map<String, dynamic>> gamesList = [
  {
    'name': 'Mario Kart',
    'rating': 8.2,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1ooo.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/qzawmco7mruk0on5af5x.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/xwbhiqws2ftn7xlx8eev.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/fnpb3gx5bhqzpcnbtxvj.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'The Witcher 3: Wild Hunt',
    'rating': 9.1,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/tri1c6vbydeosoqajwt1.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/z5t0yuhyiiui1ickwhgj.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/farvemmmxav0bgt6wx7t.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/em1y2ugcwy2myuhvb9db.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Persona 5',
    'rating': 8.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1iea.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/hlev27g508rkq1prpghw.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/k9vp7u6khokwawwctcgc.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/gin55k9eyfq8udk0taym.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Red Dead Redemption 2',
    'rating': 9.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/yfk9f2lbo0r7slytuhra.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/dorsz0jbcecmkxvzi3t8.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/banftd8fgfytbsfx6mjz.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/uyaminfh8sugglvt247u.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Mario Kart',
    'rating': 8.2,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1ooo.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/qzawmco7mruk0on5af5x.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/xwbhiqws2ftn7xlx8eev.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/fnpb3gx5bhqzpcnbtxvj.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'The Witcher 3: Wild Hunt',
    'rating': 9.1,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/tri1c6vbydeosoqajwt1.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/z5t0yuhyiiui1ickwhgj.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/farvemmmxav0bgt6wx7t.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/em1y2ugcwy2myuhvb9db.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Persona 5',
    'rating': 8.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1iea.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/hlev27g508rkq1prpghw.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/k9vp7u6khokwawwctcgc.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/gin55k9eyfq8udk0taym.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Red Dead Redemption 2',
    'rating': 9.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/yfk9f2lbo0r7slytuhra.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/dorsz0jbcecmkxvzi3t8.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/banftd8fgfytbsfx6mjz.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/uyaminfh8sugglvt247u.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Mario Kart',
    'rating': 8.2,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1ooo.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/qzawmco7mruk0on5af5x.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/xwbhiqws2ftn7xlx8eev.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/fnpb3gx5bhqzpcnbtxvj.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'The Witcher 3: Wild Hunt',
    'rating': 9.1,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/tri1c6vbydeosoqajwt1.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/z5t0yuhyiiui1ickwhgj.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/farvemmmxav0bgt6wx7t.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/em1y2ugcwy2myuhvb9db.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Persona 5',
    'rating': 8.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1iea.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/hlev27g508rkq1prpghw.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/k9vp7u6khokwawwctcgc.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/gin55k9eyfq8udk0taym.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Red Dead Redemption 2',
    'rating': 9.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/yfk9f2lbo0r7slytuhra.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/dorsz0jbcecmkxvzi3t8.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/banftd8fgfytbsfx6mjz.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/uyaminfh8sugglvt247u.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Mario Kart',
    'rating': 8.2,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1ooo.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/qzawmco7mruk0on5af5x.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/xwbhiqws2ftn7xlx8eev.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/fnpb3gx5bhqzpcnbtxvj.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'The Witcher 3: Wild Hunt',
    'rating': 9.1,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/tri1c6vbydeosoqajwt1.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/z5t0yuhyiiui1ickwhgj.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/farvemmmxav0bgt6wx7t.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/em1y2ugcwy2myuhvb9db.jpg"
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Persona 5',
    'rating': 8.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/co1iea.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/hlev27g508rkq1prpghw.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/k9vp7u6khokwawwctcgc.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/gin55k9eyfq8udk0taym.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Red Dead Redemption 2',
    'rating': 9.5,
    'imgurl':
        'https://images.igdb.com/igdb/image/upload/t_cover_big/yfk9f2lbo0r7slytuhra.jpg',
    'imgs': [
      "https://images.igdb.com/igdb/image/upload/t_original/dorsz0jbcecmkxvzi3t8.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/banftd8fgfytbsfx6mjz.jpg",
      "https://images.igdb.com/igdb/image/upload/t_original/uyaminfh8sugglvt247u.jpg",
    ],
    'desc':
        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
];
