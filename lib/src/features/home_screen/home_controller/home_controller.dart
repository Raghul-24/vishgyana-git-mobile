import 'package:flutter/material.dart';
import 'package:git_mobile/src/features/home_screen/home_models/profile_response.dart';
import 'package:git_mobile/src/features/home_screen/home_models/repo_list_response.dart';
import 'package:git_mobile/src/features/home_screen/home_repo/home_repo.dart';

class HomeController with ChangeNotifier {
  ProfileResponse? _profileResponse;
  ProfileResponse? get profileResponse => _profileResponse;

  RepoListResponse? _repoListResponse;
  RepoListResponse? get repoListResponse => _repoListResponse;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final HomeRepository _profileRepository = HomeRepository();

  Future<void>init()async{
    await getProfileInfo();
    // await getRepoList();
  }

  Future<ProfileResponse?> getProfileInfo() async {
    final result = await _profileRepository.getProfile();
    _profileResponse = result;
    debugPrint("response check ${_profileResponse?.login.toString()}");
    toggleLoading();
    notifyListeners();
    return result;
  }

  Future<RepoListResponse?> getRepoList() async {
    toggleLoading();
   const org = "agiratech";
    final result = await _profileRepository.getRepoList(org);
    _repoListResponse = result;
    debugPrint("response check ${_repoListResponse?.name.toString()}");
    toggleLoading();
    notifyListeners();
    return result;
  }

  void toggleLoading() {
    _isLoading = !isLoading;
    notifyListeners();
  }
}