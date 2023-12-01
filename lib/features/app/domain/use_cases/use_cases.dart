import 'package:health_worker/features/app/app.dart';

/// Aggregate class for managing and providing various use cases.
///
/// The [UseCases] class acts as a container for different use cases related
/// to various features in the application. It initializes and provides access
/// to instances of individual use case classes such as [AssignmentsUseCase],
/// [DoctorsUseCases], [PatientsUseCases], [RemarksUseCases], [SchoolsUseCase],
/// [ScreeningsUseCases], [UserUseCases], and [SyncUseCases].
class UseCases {
  final UserRepository _userRepository;
  final ScreeningsRepository _screeningsRepository;
  final SchoolsRepository _schoolsRepository;
  final RemarksRepository _remarksRepository;
  final PatientsRepository _patientsRepository;
  final DoctorsRepository _doctorsRepository;
  final AssignmentsRepository _assignment;
  final SyncRepository _sync;

  /// Constructor for initializing [UseCases] with various repositories.
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

  /// Get instance of [AssignmentsUseCase].
  AssignmentsUseCase get assignmentsUseCase =>
      AssignmentsUseCase(repository: _assignment);

  /// Get instance of [DoctorsUseCases].
  DoctorsUseCases get doctorsUseCases =>
      DoctorsUseCases(repository: _doctorsRepository);

  /// Get instance of [PatientsUseCases].
  PatientsUseCases get patientsUseCases =>
      PatientsUseCases(repository: _patientsRepository);

  /// Get instance of [RemarksUseCases].
  RemarksUseCases get remarksUseCases =>
      RemarksUseCases(repository: _remarksRepository);

  /// Get instance of [SchoolsUseCase].
  SchoolsUseCase get schoolsUseCase =>
      SchoolsUseCase(repository: _schoolsRepository);

  /// Get instance of [ScreeningsUseCases].
  ScreeningsUseCases get screeningsUseCases =>
      ScreeningsUseCases(repository: _screeningsRepository);

  /// Get instance of [UserUseCases].
  UserUseCases get userUseCases => UserUseCases(repository: _userRepository);

  /// Get instance of [SyncUseCases].
  SyncUseCases get syncUseCases => SyncUseCases(repository: _sync);
}
