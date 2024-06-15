import '../entities/base_tv_entities.dart';
import '../repositories/base_tv_repository.dart';

class TopRatedTVUseCase{
  final BaseTVRepository baseTVRepository;
  TopRatedTVUseCase(this.baseTVRepository);

  Future<List<TvEntities>> execute() async {
    return await baseTVRepository.getTopRatedTvs();
  }
}