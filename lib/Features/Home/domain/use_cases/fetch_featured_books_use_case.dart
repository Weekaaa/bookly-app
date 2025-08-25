import 'package:bookly_app/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/Home/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  // currently we don't need use cases since we are only fetching the books
  // but we could maybe later add a check for permission or even more use cases
  // which helps in applying single responsibility
  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    // TODO: implement call
    return await homeRepo.fetchFeaturedBooks();
  }
}
