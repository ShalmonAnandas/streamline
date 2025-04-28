// Stub implementation for path_provider functionality needed by CacheService on web.
// This prevents compile-time errors but methods will throw if called unexpectedly.

// Define a stub Directory class if needed by the conditional import logic,
// though CacheService might not directly use its methods on web.
class Directory {
  final String path;
  Directory(this.path);

  Future<void> create({bool recursive = false}) async {
    // No-op or throw, as directory creation isn't directly applicable to IndexedDB.
    print(
        "Directory.create called on web stub - this shouldn't happen for Sembast web.");
  }
}

// Define the stub function.
Future<Directory> getApplicationDocumentsDirectory() async {
  // This function should ideally not be called on the web path within CacheService.
  // Throw an error to indicate misuse if it somehow gets called.
  throw UnimplementedError(
      'getApplicationDocumentsDirectory() is not supported or needed on web for Sembast.');
}
