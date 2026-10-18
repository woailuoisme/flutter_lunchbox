import 'package:dio/dio.dart';
import 'package:lunchbox/core/network/dio_provider.dart';
import 'package:lunchbox/core/network/response/api_response.dart';
import 'package:lunchbox/features/checkin/entities/checkin_status_model.dart';
import 'package:lunchbox/features/checkin/entities/daily_task_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkin_rest_client.g.dart';

@Riverpod(keepAlive: true)
CheckinRestClient checkinRestClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return CheckinRestClient(dio);
}

@RestApi()
abstract class CheckinRestClient {
  factory CheckinRestClient(Dio dio, {String baseUrl}) = _CheckinRestClient;

  /// 获取签到状态（含本周7天）
  @GET('/api/v1/checkin/status')
  Future<ApiResponse<CheckinStatusModel>> getCheckinStatus();

  /// 执行签到
  @POST('/api/v1/checkin/sign')
  Future<ApiResponse<Map<String, dynamic>>> doCheckin();

  /// 获取每日任务列表
  @GET('/api/v1/checkin/tasks')
  Future<ApiResponse<List<DailyTaskModel>>> getDailyTasks();
}
