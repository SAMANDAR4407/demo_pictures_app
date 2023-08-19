import 'package:demo_pictures_app/core/image_api.dart';
import 'package:demo_pictures_app/page/freezed/bloc/image_bloc.dart';
import 'package:demo_pictures_app/widgets/image_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = ImageBloc(ImageApi());
  final controller = ScrollController();

  @override
  void initState() {
    bloc.add(const ImageEvent.loadData());
    controller.addListener(() {
      final position = controller.offset;
      final maxExtent = controller.position.maxScrollExtent;
      if (position / maxExtent > 0.9) {
        bloc.add(const ImageEvent.loadData());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => bloc)],
        child: BlocBuilder<ImageBloc, ImageState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Images'),
                centerTitle: true,
              ),
              body: Builder(
                builder: (context) {
                  if (state.status == EnumStatus.loading && state.list.isEmpty) {
                    return const Center(
                        child: CupertinoActivityIndicator(radius: 20));
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
                            itemCount: state.list.length,
                            separatorBuilder: (_, i) => const Divider(),
                            itemBuilder: (_, i) {
                              final model = state.list[i];
                              return SizedBox(
                                width: double.infinity,
                                child: state.list.isEmpty
                                    ? const Center(child: Text('No content'))
                                    : ImageItem(model: model),
                              );
                            },
                          ),
                        ),
                      ),
                      state.status == EnumStatus.loading
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
          },
        ));
  }
}
