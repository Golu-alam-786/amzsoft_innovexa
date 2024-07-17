import 'package:amzsoft_innovexa_assignment/views/utils/app_constants/image_constants.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var searchData = [
    searchItem(image:search,name:"Persian Tabriz",price:"₹12,999",cm:"151 x 102 cm",favStatus:false),
    searchItem(image:search1,name:"Persian Tabriz",price:"₹12,999",cm:"151 x 102 cm",favStatus:false),
    searchItem(image:search1,name:"Persian Tabriz",price:"₹12,999",cm:"151 x 102 cm",favStatus:false),
    searchItem(image:search,name:"Persian Tabriz",price:"₹12,999",cm:"151 x 102 cm",favStatus:false),
    searchItem(image:search,name:"Persian Tabriz",price:"₹12,999",cm:"151 x 102 cm",favStatus:false),
    searchItem(image:search1,name:"Persian Tabriz",price:"₹12,999",cm:"151 x 102 cm",favStatus:false),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(notification),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(person,width:35,color: Colors.black,),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 65,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 16, top: 8),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Persian Tabriz',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '10,000 results',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Filters',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 2 / 3,
                  
                ),
                itemCount: searchData.length,
                itemBuilder: (context, index) {
                  var searchItemData = searchData[index];
                  var img = searchItemData['image'];
                  var name = searchItemData['name'];
                  var cm = searchItemData['cm'];
                  var price = searchItemData['price'];
                  var favStatus = searchItemData['favStatus'];
                  return Container(
                    child: PhysicalModel(
                      elevation: 1,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                img,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                 Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name,
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(price),
                                    Text(cm),
                                  ],
                                ),
                                IconButton(
                                  icon: const Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

 static Map<String,dynamic> searchItem({required String image, required String name, required String price, required String cm, required bool favStatus}) {
    return {
      "image":image,
      "name":name,
      "price":price,
      "cm":cm,
      "favStatus":favStatus
    };
  }
}
