import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  ApiServices apiServices;
  HomeRepoImplementation({required this.apiServices});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'https://www.googleapis.com/books/v1/volumes?q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(Failures as Failures);
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
