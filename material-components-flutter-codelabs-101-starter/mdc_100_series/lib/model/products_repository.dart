// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.accessories,
        id: 0,
        isFeatured: true,
        name: 'Buket Mawar Merah Classic',
        price: 150000,
        assetFileName: 'Buket Mawar Merah Classic.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 1,
        isFeatured: true,
        name: 'Buket Mawar Pink',
        price: 200000,
        assetFileName: 'Buket Mawar Pink.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 2,
        isFeatured: false,
        name: 'Buket Mawar Biru Premium',
        price: 350000,
        assetFileName: 'Buket Mawar Biru Premium.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 3,
        isFeatured: true,
        name: 'Buket Tulip Mix',
        price: 250000,
        assetFileName: 'Buket Tulip Mix.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 4,
        isFeatured: false,
        name: 'Buket Lili Putih',
        price: 340000,
        assetFileName: 'Buket Lili Putih.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 5,
        isFeatured: false,
        name: 'Buket Anggrek Ungu',
        price: 200000,
        assetFileName: 'Buket Anggrek Ungu.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 6,
        isFeatured: false,
        name: 'Bunga Gerbera Colorful',
        price: 200000,
        assetFileName: 'Bunga Gerbera Colorful.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 7,
        isFeatured: true,
        name: 'Buket Mix Rose & Babys Breath',
        price: 252000,
        assetFileName: 'Buket Mix Rose & Babys Breath.jpg',
      ),
      Product(
        category: Category.accessories,
        id: 8,
        isFeatured: true,
        name: 'Buket Bunga Anyelir',
        price: 230000,
        assetFileName: 'Buket Bunga Anyelir.jpg',
      ),
      Product(
        category: Category.home,
        id: 9,
        isFeatured: true,
        name: 'Buket Calla Lily Putih',
        price: 580000,
        assetFileName: 'Buket Calla Lily Putih.jpg',
      ),
      Product(
        category: Category.home,
        id: 10,
        isFeatured: false,
        name: 'Buket Hydrangea Biru',
        price: 180000,
        assetFileName: 'Buket Hydrangea Biru.jpg',
      ),
      Product(
        category: Category.home,
        id: 11,
        isFeatured: false,
        name: 'Buket Daisy Putih Manis',
        price: 280000,
        assetFileName: 'Buket Daisy Putih Manis.jpg',
      ),
      Product(
        category: Category.home,
        id: 12,
        isFeatured: false,
        name: 'Peony Pink',
        price: 340000,
        assetFileName: 'Peony Pink.jpg',
      ),
      Product(
        category: Category.home,
        id: 13,
        isFeatured: true,
        name: 'Buket Mix Sunflower & Krisan',
        price: 180000,
        assetFileName: 'Buket Mix Sunflower & Krisan.jpg',
      ),
      Product(
        category: Category.home,
        id: 14,
        isFeatured: true,
        name: 'Lily Oriental',
        price: 270000,
        assetFileName: 'Lily Oriental.jpg',
      ),
      Product(
        category: Category.home,
        id: 15,
        isFeatured: true,
        name: 'Bunga Dahlia',
        price: 260000,
        assetFileName: 'Bunga Dahlia.jpg'
      ),
      Product(
        category: Category.home,
        id: 16,
        isFeatured: true,
        name: 'Lavender',
        price: 160000,
        assetFileName: 'Lavender.jpg'
      ),
      Product(
        category: Category.home,
        id: 270000,
        isFeatured: false,
        name: 'Alamanda',
        price: 275000,
        assetFileName: 'Alamanda.jpg'
      ),
      Product(
        category: Category.home,
        id: 18,
        isFeatured: true,
        name: 'Frangipani',
        price: 229000,
        assetFileName: 'Frangipani.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 19,
        isFeatured: false,
        name: 'Amaryllis',
        price: 430000,
        assetFileName: 'Amaryllis.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 20,
        isFeatured: false,
        name: 'Ranunculus',
        price: 450000,
        assetFileName: 'Ranunculus.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 21,
        isFeatured: false,
        name: 'Freesia',
        price: 380000,
        assetFileName: 'Freesia.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 22,
        isFeatured: false,
        name: 'Scabiosa',
        price: 70000,
        assetFileName: 'Scabiosa.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 23,
        isFeatured: false,
        name: 'Calla Lily',
        price: 70000,
        assetFileName: 'Calla Lily.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 24,
        isFeatured: true,
        name: 'Delphinium',
        price: 60000,
        assetFileName: 'Delphinium.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 25,
        isFeatured: false,
        name: 'Bunga Matahari',
        price: 17800,
        assetFileName: 'Bunga Matahari.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 26,
        isFeatured: false,
        name: 'Cornflower',
        price: 74000,
        assetFileName: 'Cornflower.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 27,
        isFeatured: true,
        name: 'Sweet Pea',
        price: 58000,
        assetFileName: 'Sweet Pea.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 28,
        isFeatured: true,
        name: 'Gardenia',
        price: 48000,
        assetFileName: 'Gardenia.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 29,
        isFeatured: true,
        name: 'Protea',
        price: 98000,
        assetFileName: 'Protea.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 30000,
        isFeatured: true,
        name: 'Lupin',
        price: 68,
        assetFileName: 'Lupin.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 31,
        isFeatured: false,
        name: 'Strelitzia',
        price: 38000,
        assetFileName: 'Strelitzia.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 32,
        isFeatured: false,
        name: 'Wedding Buket',
        price: 58000,
        assetFileName: 'Wedding Buket.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 33,
        isFeatured: true,
        name: 'Mawar Pink',
        price: 32000,
        assetFileName: 'Mawar Pink.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 34,
        isFeatured: false,
        name: 'Bunga Scilla',
        price: 27000,
        assetFileName: 'Bunga Scilla.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 35000,
        isFeatured: false,
        name: 'Bunga Astilbe',
        price: 24000,
        assetFileName: 'Bunga Astilbe.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 36,
        isFeatured: false,
        name: 'Lily',
        price: 58000,
        assetFileName: 'Lily.jpg'
      ),
      Product(
        category: Category.clothing,
        id: 37,
        isFeatured: true,
        name: 'Mawar Putih',
        price: 58000,
        assetFileName: 'Mawar Putih.jpg'
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
