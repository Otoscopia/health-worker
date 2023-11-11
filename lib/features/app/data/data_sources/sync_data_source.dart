// import 'package:appwrite/appwrite.dart';
import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class SyncDataSource {
  final Isar _isar;
  // final Databases _database;

  SyncDataSource()
      : _isar = isar;
        // _database = database;

  Future<void> addSync({required SyncModel sync}) async {
    await _isar.writeTxn(() async {
      await _isar.syncModels.put(sync);
    });
  }

  Future<void> sync() async {
    // List<SyncModel> response = await _isar.syncModels.where().findAll();

    // List<AssignmentEntity> assignments = response.map((models) {
    //   final AssignmentEntity assignment = models.screening;

    //   return AssignmentEntity(
    //       id: models.screening.[""],
    //       nurse: nurse,
    //       school: school,
    //       startDate: startDate,
    //       endDate: endDate);
    // }).toList();
    // List<PatientEntity> patients = response.map((models) => null).toList();
    // await _isar.writeTxn((_) async {
    //   final syncs = await _isar.syncModels.getAll();

    //   for (final sync in syncs) {
    //     switch (sync.type) {
    //       case SyncType.assignment:
    //         await useCases.assignmentsUseCase.setRemoteAssignment(
    //           assignment: sync.assignment!,
    //         );
    //         break;
    //       case SyncType.doctor:
    //         await useCases.doctorsUseCases.setRemoteDoctor(
    //           doctor: sync.doctor!,
    //         );
    //         break;
    //       case SyncType.patient:
    //         await useCases.patientsUseCases.setRemotePatient(
    //           patient: sync.patient!,
    //         );
    //         break;
    //       case SyncType.remark:
    //         await useCases.remarksUseCases.setRemoteRemark(
    //           remark: sync.remark!,
    //         );
    //         break;
    //       case SyncType.school:
    //         await useCases.schoolsUseCase.setRemoteSchool(
    //           school: sync.school!,
    //         );
    //         break;
    //       case SyncType.screening:
    //         await useCases.screeningsUseCases.setRemoteScreening(
    //           screening: sync.screening!,
    //         );
    //         break;
    //       case SyncType.user:
    //         await useCases.userUseCases.setRemoteUser(
    //           user: sync.user!,
    //         );
    //         break;
    //       default:
    //         break;
    //     }
    //   }
    // });
  }
}
