import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_learning/pages_admin/blogs/blog_upload.dart';



class AllBlogs extends StatelessWidget {
  const AllBlogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(
        itemCount: 5,
        padding: const EdgeInsets.only(bottom: 30),
        itemBuilder: (context, index) {
          return Container(
            // height: 100,
            decoration: const  BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey))),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 10,),
                          Text('About Us',style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),),
                          SizedBox(height: 5,),
                          Text('The Society of Jesus, founded by St. '
                              'Ignatius of Loyola in 1540, gave the '
                              'world the present system of schooling'
                              ' and is active in the field of education... ',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white70),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {

                      },
                      child: const SizedBox(
                        height: 50,
                        width: 55,
                        child: Center(child: Text('Edit',style: TextStyle(color: Colors.green),)),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                      },
                      child: const SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(child: Text('Delete',style: TextStyle(color: Colors.red),)),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                )
              ],
            ),
          );
        },),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Get.to(()=> const BlogUpload());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
