import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_pavan/core/features/contact/data/impl/contact_form_repository_impl.dart';
import 'package:portfolio_pavan/core/features/contact/data/repository/contact_form_repository.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/bloc/contact_us_state.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit() : super(ContactUsState());
  final ContactFormRepository contactFormRepository =
  ContactFormRepositoryImpl();
  Future<void> submitForm(
      String firstName,
      String lastName,
      String email,
      String message,
      ) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await contactFormRepository.submitForm(
        firstName: firstName,
        lastName: lastName,
        email: email,
        message: message,
      );
      emit(state.copyWith(isLoading: false, isSuccess: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  void reset() => emit(ContactUsState());
}