// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:mindshifttherapist/application/core/failure/failure.dart';
// import 'package:mindshifttherapist/application/network/error_handler/error_handler.dart';
// import 'package:mindshifttherapist/data/models/user_models/profile_availability_model.dart';
// import 'package:mindshifttherapist/data/models/user_models/user_model.dart';
// import 'package:mindshifttherapist/data/remote_data_source/profile_api/i_profile_api.dart';
// import 'package:mindshifttherapist/domain/interfaces/profile/i_profile_repo_.dart';
//
// class ProfileRepo implements IProfileRepo {
//   ProfileRepo({required this.api});
//   IProfileApi api;
//
//
//   @override
//   Future<Either<Failure, ProfileDataModel>> getUserProfile() async {
//     try {
//       final result = await api.getUser();
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//   @override
//   Future<Either<Failure, ProfileDataModel>> profileStatusUpdate(
//       Map<String, dynamic> map) async {
//     try {
//       final result = await api.profileStatusUpdate(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//   @override
//   Future<Either<Failure, ProfileDataModel>> profileUpdate(
//       Map<String, dynamic> map) async {
//     try {
//       final result = await api.profileUpdate(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//
//   @override
//   Future<Either<Failure, ProfileDataModel>> changePassword(
//       Map<String, dynamic> map) async {
//     try {
//       final result = await api.changePassword(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//
//   @override
//   Future<Either<Failure, ProfileDataModel>> uploadProfile(
//       FormData map) async {
//     try {
//       final result = await api.uploadProfile(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//
//   @override
//   Future<Either<Failure, ProfileDataModel>> addEducation(
//       Map<String, dynamic> map) async {
//     try {
//       final result = await api.addEducation(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//   @override
//   Future<Either<Failure, ProfileDataModel>> addExperience(
//       Map<String, dynamic> map) async {
//     try {
//       final result = await api.addExperience(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//   @override
//   Future<Either<Failure, ProfileDataModel>> updateEducation(
//       Map<String, dynamic> map, String educationId) async {
//     try {
//       final result = await api.updateEducation(map,educationId);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//   @override
//   Future<Either<Failure, ProfileDataModel>> updateExperience(
//       Map<String, dynamic> map,String experienceId) async {
//     try {
//       final result = await api.updateExperience(map,experienceId);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//   @override
//   Future<Either<Failure, ProfileDataModel>> deleteEducation(String educationId) async {
//     try {
//       final result = await api.deleteEducation(educationId);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//   @override
//   Future<Either<Failure, ProfileDataModel>> deleteExperience(String experienceId) async {
//     try {
//       final result = await api.deleteExperience(experienceId);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
// }
