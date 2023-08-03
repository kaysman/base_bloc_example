// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:eduapp_flutter/di/register_app_client.dart' as _i26;
import 'package:eduapp_flutter/di/register_storage.dart' as _i27;
import 'package:eduapp_flutter/features/app/app_bloc.dart' as _i22;
import 'package:eduapp_flutter/features/app/app_bloc_impl.dart' as _i23;
import 'package:eduapp_flutter/features/auth/bloc/login_bloc.dart' as _i24;
import 'package:eduapp_flutter/features/auth/bloc/login_bloc_impl.dart' as _i25;
import 'package:eduapp_flutter/features/auth/bloc/register_bloc.dart' as _i19;
import 'package:eduapp_flutter/features/auth/bloc/register_bloc_impl.dart'
    as _i20;
import 'package:eduapp_flutter/features/auth/usecases/login_user_usecase.dart'
    as _i15;
import 'package:eduapp_flutter/features/auth/usecases/register_user_usecase.dart'
    as _i16;
import 'package:eduapp_flutter/features/hive_box.dart' as _i9;
import 'package:eduapp_flutter/features/launcher/bloc/launcher_bloc.dart'
    as _i13;
import 'package:eduapp_flutter/features/launcher/bloc/launcher_bloc_impl.dart'
    as _i14;
import 'package:eduapp_flutter/features/root/bloc/root_bloc.dart' as _i5;
import 'package:eduapp_flutter/features/root/bloc/subject_bloc.dart' as _i17;
import 'package:eduapp_flutter/features/root/usecases/get_school_list_usecase.dart'
    as _i11;
import 'package:eduapp_flutter/features/user/data/user_data_manager.dart'
    as _i21;
import 'package:eduapp_flutter/features/user/usecases/get_user_usecase.dart'
    as _i12;
import 'package:eduapp_flutter/features/user/usecases/user_usecases.dart'
    as _i18;
import 'package:eduapp_flutter/remote/api/account_service.dart' as _i8;
import 'package:eduapp_flutter/remote/api/app_client.dart' as _i4;
import 'package:eduapp_flutter/remote/api/auth_service.dart' as _i10;
import 'package:eduapp_flutter/remote/api/subject_service.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final eduAppWebServices = _$EduAppWebServices();
    await gh.singletonAsync<_i3.Box<dynamic>>(
      () => registerModule.mainHiveBox,
      instanceName: 'main_box',
      preResolve: true,
    );
    gh.lazySingleton<_i4.EduAppClient>(() => eduAppWebServices.client);
    gh.factory<_i5.RootBloc>(() => _i5.RootBlocImpl());
    await gh.singletonAsync<_i6.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i7.SubjectService>(
        () => eduAppWebServices.subjectService(gh<_i4.EduAppClient>()));
    gh.factory<_i8.AccountService>(
        () => eduAppWebServices.accountService(gh<_i4.EduAppClient>()));
    gh.singleton<_i9.AppHiveBox>(
        _i9.AppHiveBoxImpl(gh<_i3.Box<dynamic>>(instanceName: 'main_box')));
    gh.factory<_i10.AuthService>(
        () => eduAppWebServices.authService(gh<_i4.EduAppClient>()));
    gh.factory<_i11.GetSubjectsListUsecase>(
        () => _i11.GetSubjectsListUsecase(gh<_i7.SubjectService>()));
    gh.factory<_i12.GetUserUseCase>(
        () => _i12.GetUserUseCase(gh<_i8.AccountService>()));
    gh.factory<_i13.LauncherBloc>(
        () => _i14.LauncherBlocImpl(gh<_i9.AppHiveBox>()));
    gh.factory<_i15.LoginUsecase>(
        () => _i15.LoginUsecase(gh<_i10.AuthService>()));
    gh.factory<_i16.RegisterUserUsecase>(
        () => _i16.RegisterUserUsecase(gh<_i10.AuthService>()));
    gh.factory<_i17.SubjectBloc>(
        () => _i17.SubjectBlocImpl(gh<_i11.GetSubjectsListUsecase>()));
    gh.factory<_i18.UserUseCases>(
        () => _i18.UserUseCases(gh<_i12.GetUserUseCase>()));
    gh.singleton<_i19.RegisterBloc>(
        _i20.RegisterBlocImpl(gh<_i16.RegisterUserUsecase>()));
    gh.singleton<_i21.UserDataManager>(
        _i21.UserDataManager(gh<_i18.UserUseCases>()));
    gh.singleton<_i22.AppBloc>(_i23.AppBlocImpl(gh<_i21.UserDataManager>()));
    gh.factory<_i24.LoginBloc>(() => _i25.LoginBlocImpl(
          gh<_i15.LoginUsecase>(),
          gh<_i21.UserDataManager>(),
          gh<_i6.SharedPreferences>(),
          gh<_i9.AppHiveBox>(),
        ));
    return this;
  }
}

class _$EduAppWebServices extends _i26.EduAppWebServices {}

class _$RegisterModule extends _i27.RegisterModule {}
