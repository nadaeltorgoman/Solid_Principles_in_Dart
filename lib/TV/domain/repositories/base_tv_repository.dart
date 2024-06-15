import 'package:task1/TV/domain/entities/base_tv_entities.dart';

abstract class BaseTVRepository {
  Future<List<TvEntities>> getNowPlayingTvs();
  Future<List<TvEntities>> getPopularTvs();
  Future<List<TvEntities>> getTopRatedTvs();
}