import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooksCubit() async {
    emit(NewestBooksCubitLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
        (failure) =>
            emit(NewestBooksCubitFailure(errMessage: failure.errMessage)),
        (books) => emit(NewestBooksCubitSuccess(books: books)));
  }
}
