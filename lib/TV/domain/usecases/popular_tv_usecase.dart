import 'package:task1/TV/domain/entities/base_tv_entities.dart';
import 'package:task1/TV/domain/repositories/base_tv_repository.dart';

class PopularTVUseCase{
  final BaseTVRepository baseTVRepository;
  PopularTVUseCase(this.baseTVRepository);

  Future<List<TvEntities>> execute() async {
    return await baseTVRepository.getPopularTvs();
  }
}