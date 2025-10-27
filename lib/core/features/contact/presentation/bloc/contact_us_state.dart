
class ContactUsState {
  final bool isLoading;
  final bool isSuccess;
  final String? error;

  ContactUsState({this.isLoading = false, this.isSuccess = false, this.error});

  ContactUsState copyWith({bool? isLoading, bool? isSuccess, String? error}) {
    return ContactUsState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      error: error,
    );
  }
}

