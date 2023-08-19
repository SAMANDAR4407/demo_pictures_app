import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo_pictures_app/core/image_api.dart';
import 'package:demo_pictures_app/core/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_bloc.freezed.dart';
part 'image_state.dart';
part 'image_event.dart';


class ImageBloc extends Bloc<ImageEvent, ImageState> {

  final ImageApi _api;

  ImageBloc(this._api) : super(ImageState.state()) {
    on<ImageEvent>((event, emit) async {
      switch(event){
        case _loadData():
          await _onLoadData(event, emit);
          break;
        default:
          break;
      }
    });
  }

  Future<void> _onLoadData(_loadData event, Emitter<ImageState> emit) async {
    if (state.status == EnumStatus.loading || state.page > 50) return;
    emit(state.copyWith(status: EnumStatus.loading));
    try {
      final list = <ImageModel>[];
      list.addAll(state.list);
      list.addAll(await _api.images(page: state.page));
      print("length = ${list.length}");
      emit(state.copyWith(
        status: EnumStatus.success,
        page: state.page + 1,
        list: list,
      ));
    } catch (e) {
      emit(state.copyWith(status: EnumStatus.fail, message: "$e"));
    }
  }
}
