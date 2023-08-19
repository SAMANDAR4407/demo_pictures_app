import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_pictures_app/core/image_api.dart';
import 'package:demo_pictures_app/core/image_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/image_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _api = ImageApi();
  var list = <ImageModel>[];
  var loading = false;
  var page = 1;
  final controller = ScrollController();

  @override
  void initState() {
    loadData();
    controller.addListener(() {
      final position = controller.offset;
      final maxExtent = controller.position.maxScrollExtent;
      if (position / maxExtent > 0.9) {
        if (loading || page > 50) return;
        loadData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> loadData() async {
    loading = true;
    setState(() {});
    try {
      list.addAll(await _api.images(page: page));
      page += 1;
    } catch (e) {
      //
    }
    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          if (loading && list.isEmpty) {
            return const Center(child: CupertinoActivityIndicator(radius: 20));
          }
          return Column(
            children: [
              Expanded(
                child: Scrollbar(
                  controller: controller,
                  thickness: 10,
                  thumbVisibility: true,
                  child: ListView.separated(
                    controller: controller,
                    itemCount: list.length,
                    separatorBuilder: (_, i) => const Divider(),
                    itemBuilder: (_, i) {
                      final model = list[i];
                      return SizedBox(
                        width: double.infinity,
                        child: list.isEmpty
                            ? const Center(child: Text('No content'))
                            : ImageItem(model: model),
                      );
                    },
                  ),
                ),
              ),
              loading
                  ? const Padding(
                      padding: EdgeInsets.all(15),
                      child: CupertinoActivityIndicator(
                        radius: 10,
                      ),
                    )
                  : const SizedBox()
            ],
          );
        },
      ),
    );
  }
}
