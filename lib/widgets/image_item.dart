import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_pictures_app/core/image_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageItem extends StatelessWidget {
  final ImageModel model;
  const ImageItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15),
          child: CachedNetworkImage(
            imageUrl: model.downloadUrl,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Builder(builder: (context) {
          return Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Text('${int.parse(model.id) + 1}.'),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed('/image', arguments: model);
                  },
                  child:
                  const Text('Open image')),
            ],
          );
        })
      ],
    );
  }
}
