import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../styles/app_colors.dart';
import '../../controllers/blog_upload_controller.dart';
import 'package:image_picker/image_picker.dart';

import '../../styles/common_module/app_bar.dart';



class BlogUpload extends StatefulWidget {
  const BlogUpload({Key? key}) : super(key: key);

  @override
  State<BlogUpload> createState() => _BlogUploadState();
}



 class _BlogUploadState extends State<BlogUpload> {

   UploadBlogController uploadBlogController = Get.put(UploadBlogController());
   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.adminAppBar(''),
        body: Scaffold(
          backgroundColor: Colors.black87,
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                  Container(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _getCoverImage();
                    },
                    child:
                    profileImage == null ?
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: AppColors.darkGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.cloud_upload_rounded,size: 65,color: AppColors.themeColorLight),
                    ):Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: FileImage(profileImage!),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 22),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('  Title :',style: TextStyle(color: Colors.white70,fontSize: 15)),
                        const SizedBox(height: 10,),
                        TextFormField(
                            textInputAction: TextInputAction.next,
                           validator: (value) =>
                            value!.isEmpty? 'please enter title' : null,
                           controller: uploadBlogController.titleTEC,
                            style: TextStyle(fontSize: 15, color: AppColors.black),
                            decoration: InputDecoration(
                              fillColor: AppColors.themeColorLight,
                              filled: true,
                              hintText: 'Enter Image Title...',
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: AppColors.black,
                                  )
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left:10,top: 15,bottom: 15),
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.darkGrey,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Blog',style: TextStyle(fontSize: 15,color: AppColors.lightSeeGreen)),
                        const SizedBox(height: 10,),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            validator: (value) =>
                            value!.isEmpty ? 'please enter content' : null,
                            controller: uploadBlogController.headlineTEC,
                            minLines: 6, // any number you need (It works as the rows for the textarea)
                            maxLines: null,
                            decoration: InputDecoration(
                              fillColor: AppColors.themeColorLight,
                              filled: true,
                              hintText: 'Write your blog here....',
                              hintStyle: const TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.lightSeeGreen,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(15))
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:  BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                   margin: const EdgeInsets.symmetric(horizontal: 2,),
                    width: 230,
                    height: 43,
                    child: ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                         uploadBlogController.uploadBlog(selectedImagePath.value);
                        }
                        // else if(profileImage == null){
                        //   MySnackbar.errorSnackBar('Image is empty', 'Please select image file');
                        // }
                      },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)))),
                      child: const Text('Send',style: TextStyle(fontSize: 16,)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
   // File? selectedImageFile;

   //
   // void getImage(ImageSource imageSource) async {
   //   final pickedFile = await ImagePicker().pickImage(source: imageSource);
   //   if (pickedFile != null) {
   //    // selectedImagePath.value = pickedFile.path;
   //     selectedImageFile = File(pickedFile.path);
   //   }
   //   else {
   //     MySnackbar.infoSnackBar('No Image selected', 'Please select a image for your profile');
   //   }
   // }

  //var profileImage;

   File? profileImage;
   ImagePicker picker = ImagePicker();
   var selectedImagePath = ''.obs;
   _getCoverImage() async {
     XFile? pickedFile = await ImagePicker().pickImage(
       source: ImageSource.gallery,
       maxWidth: 180,
       maxHeight: 180,
     );
     if (pickedFile != null) {

       setState(() {
         profileImage = File(pickedFile.path);
       });
        selectedImagePath.value = pickedFile.path;
     }
   }
}
