class ServerException implements Exception {
  final String message;
  ServerException([this.message = "Erro ao conectar com o servidor"]);
}
