import '../models/episodes_model.dart';

abstract class IEpisodesRepository {
  Future<List<EpisodesModel>> findAllEpisodes();
}
