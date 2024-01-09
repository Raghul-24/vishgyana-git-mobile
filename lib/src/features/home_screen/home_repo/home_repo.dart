import 'package:git_mobile/src/features/home_screen/home_models/profile_response.dart';
import 'package:git_mobile/src/features/home_screen/home_models/repo_list_response.dart';
import 'package:git_mobile/src/services/networking/api_endpoint.dart';
import 'package:git_mobile/src/services/networking/api_service.dart';

abstract class HomeServices {
  Future<ProfileResponse?> getProfile();
  Future<RepoListResponse?> getRepoList(String? org);
}

class HomeRepository implements HomeServices {
  final _apiService = ApiService();

  @override
  Future<ProfileResponse?> getProfile() async {
    return await _apiService.getDocumentData<ProfileResponse>(
        endpoint: ApiEndpoint.auth(AuthEndpoint.PROFILE),
        onError: (value) {},
        converter: (response) {
          return ProfileResponse.fromJson(response);
        });
  }

  @override
  Future<RepoListResponse?> getRepoList(String? org,) async {
    return await _apiService.getDocumentData<RepoListResponse>(
        endpoint: "${ApiEndpoint.auth(AuthEndpoint.REPO_LIST)}$org/repos",
        onError: (value) {},
        converter: (response) {
          return RepoListResponse.fromJson(response);
        });
  }
}