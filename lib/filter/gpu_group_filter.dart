part of '../gpu_image.dart';

class GPUGroupFilter extends GPUFilter {
  List<GPUFilter>? filters;

  /// apply filters list
  GPUGroupFilter({required this.filters}){
    type = "group";
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    "type": type,
    "value": filters?.map((e) => e.toJson()).toList() ?? []
  };
}