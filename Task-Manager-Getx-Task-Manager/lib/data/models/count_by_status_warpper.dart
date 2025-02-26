import 'package:task_manager/data/models/task_by_status_data.dart';

class CountByStatusWarpper {
  String? status;
  List<TaskCountByStatusData>? listOfTaskbyStatusData;

  CountByStatusWarpper({this.status, this.listOfTaskbyStatusData});

  CountByStatusWarpper.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      listOfTaskbyStatusData = <TaskCountByStatusData>[];
      json['data'].forEach((v) {
        listOfTaskbyStatusData!.add(TaskCountByStatusData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.listOfTaskbyStatusData != null) {
      data['data'] = this.listOfTaskbyStatusData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


