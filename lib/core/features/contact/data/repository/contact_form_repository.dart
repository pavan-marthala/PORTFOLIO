abstract class ContactFormRepository {
  Future<void> submitForm({
    required String firstName,
    required String lastName,
    required String email,
    required String message,
  });
}
