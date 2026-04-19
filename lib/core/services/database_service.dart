abstract class DatabaseService {
  // addData-------------------------------------------------------------
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });

  // getData-------------------------------------------------------------
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  });
  
  
}
