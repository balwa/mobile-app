// @dart=3.0
import 'package:patta/Environment.dart';
import 'package:patta/LocalEnvironment.dart';
import 'package:patta/main_common.dart';
import 'package:patta/main_config.dart';

Future<void> main() async {
  if(EnvironmentConfig.BUILD_ENV == "production"){
      await mainCommon(ProductionEnvironment());
  } else if(EnvironmentConfig.BUILD_ENV == "staging"){
      await mainCommon(StagingEnvironment());
  } else {
      await mainCommon(LocalEnvironment());
  }
}
