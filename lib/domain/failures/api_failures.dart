class ApiFailures {
  const ApiFailures.clientFailure({
    String? errorMessage,
  });

  const ApiFailures.serverFailure({
    int? statusCode,
    String? errorMessage,
  });
}
