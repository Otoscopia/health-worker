import 'package:health_worker/features/app/app.dart';

class UseCases {
  final UserRepository _userRepository;
  final ScreeningsRepository _screeningsRepository;
  final SchoolsRepository _schoolsRepository;
  final RemarksRepository _remarksRepository;
  final PatientsRepository _patientsRepository;
  final DoctorsRepository _doctorsRepository;
  final AssignmentsRepository _assignment;
  final SyncRepository _sync;

  UseCases({
    required UserRepository userRepository,
    required ScreeningsRepository screeningsRepository,
    required SchoolsRepository schoolsRepository,
    required RemarksRepository remarksRepository,
    required PatientsRepository patientsRepository,
    required DoctorsRepository doctorsRepository,
    required AssignmentsRepository assignmentsRepository,
    required SyncRepository syncRepository,
  })  : _userRepository = userRepository,
        _screeningsRepository = screeningsRepository,
        _schoolsRepository = schoolsRepository,
        _remarksRepository = remarksRepository,
        _patientsRepository = patientsRepository,
        _doctorsRepository = doctorsRepository,
        _assignment = assignmentsRepository,
        _sync = syncRepository;
  
  // User use cases
  AssignmentsUseCase get assignmentsUseCase => AssignmentsUseCase(repository: _assignment);

  DoctorsUseCases get doctorsUseCases => DoctorsUseCases(repository: _doctorsRepository);

  PatientsUseCases get patientsUseCases => PatientsUseCases(repository: _patientsRepository);

  RemarksUseCases get remarksUseCases => RemarksUseCases(repository: _remarksRepository);

  SchoolsUseCase get schoolsUseCase => SchoolsUseCase(repository: _schoolsRepository);

  ScreeningsUseCases get screeningsUseCases => ScreeningsUseCases(repository: _screeningsRepository);

  UserUseCases get userUseCases => UserUseCases(repository: _userRepository);

  SyncUseCases get syncUseCases => SyncUseCases(repository: _sync);
}
