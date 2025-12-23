// In this case we really want this interface if we want to easily use other LLM datasources
// ignore: one_member_abstracts
abstract interface class LLMDatasource {
  Future<Map<String, dynamic>> noughtPlay(Map<String, dynamic> currentGame);
}
