class ProfileResponse {
  final String? login;
  final int? id;
  final String? nodeId;
  final String? avatarUrl;
  final String? gravatarId;
  final String? url;
  final String? htmlUrl;
  final String? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? starredUrl;
  final String? subscriptionsUrl;
  final String? organizationsUrl;
  final String? reposUrl;
  final String? eventsUrl;
  final String? receivedEventsUrl;
  final String? type;
  final bool? siteAdmin;
  final String? name;
  final dynamic company;
  final String? blog;
  final dynamic location;
  final String? email;
  final dynamic hireable;
  final dynamic bio;
  final dynamic twitterUsername;
  final int? publicRepos;
  final int? publicGists;
  final int? followers;
  final int? following;
  final String? createdAt;
  final String? updatedAt;
  final int? privateGists;
  final int? totalPrivateRepos;
  final int? ownedPrivateRepos;
  final int? diskUsage;
  final int? collaborators;
  final bool? twoFactorAuthentication;
  final Plan? plan;

  ProfileResponse({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hireable,
    this.bio,
    this.twitterUsername,
    this.publicRepos,
    this.publicGists,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
    this.privateGists,
    this.totalPrivateRepos,
    this.ownedPrivateRepos,
    this.diskUsage,
    this.collaborators,
    this.twoFactorAuthentication,
    this.plan,
  });

  ProfileResponse.fromJson(Map<String, dynamic> json)
      : login = json['login'] as String?,
        id = json['id'] as int?,
        nodeId = json['node_id'] as String?,
        avatarUrl = json['avatar_url'] as String?,
        gravatarId = json['gravatar_id'] as String?,
        url = json['url'] as String?,
        htmlUrl = json['html_url'] as String?,
        followersUrl = json['followers_url'] as String?,
        followingUrl = json['following_url'] as String?,
        gistsUrl = json['gists_url'] as String?,
        starredUrl = json['starred_url'] as String?,
        subscriptionsUrl = json['subscriptions_url'] as String?,
        organizationsUrl = json['organizations_url'] as String?,
        reposUrl = json['repos_url'] as String?,
        eventsUrl = json['events_url'] as String?,
        receivedEventsUrl = json['received_events_url'] as String?,
        type = json['type'] as String?,
        siteAdmin = json['site_admin'] as bool?,
        name = json['name'] as String?,
        company = json['company'],
        blog = json['blog'] as String?,
        location = json['location'],
        email = json['email'] as String?,
        hireable = json['hireable'],
        bio = json['bio'],
        twitterUsername = json['twitter_username'],
        publicRepos = json['public_repos'] as int?,
        publicGists = json['public_gists'] as int?,
        followers = json['followers'] as int?,
        following = json['following'] as int?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        privateGists = json['private_gists'] as int?,
        totalPrivateRepos = json['total_private_repos'] as int?,
        ownedPrivateRepos = json['owned_private_repos'] as int?,
        diskUsage = json['disk_usage'] as int?,
        collaborators = json['collaborators'] as int?,
        twoFactorAuthentication = json['two_factor_authentication'] as bool?,
        plan = (json['plan'] as Map<String,dynamic>?) != null ? Plan.fromJson(json['plan'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'login' : login,
    'id' : id,
    'node_id' : nodeId,
    'avatar_url' : avatarUrl,
    'gravatar_id' : gravatarId,
    'url' : url,
    'html_url' : htmlUrl,
    'followers_url' : followersUrl,
    'following_url' : followingUrl,
    'gists_url' : gistsUrl,
    'starred_url' : starredUrl,
    'subscriptions_url' : subscriptionsUrl,
    'organizations_url' : organizationsUrl,
    'repos_url' : reposUrl,
    'events_url' : eventsUrl,
    'received_events_url' : receivedEventsUrl,
    'type' : type,
    'site_admin' : siteAdmin,
    'name' : name,
    'company' : company,
    'blog' : blog,
    'location' : location,
    'email' : email,
    'hireable' : hireable,
    'bio' : bio,
    'twitter_username' : twitterUsername,
    'public_repos' : publicRepos,
    'public_gists' : publicGists,
    'followers' : followers,
    'following' : following,
    'created_at' : createdAt,
    'updated_at' : updatedAt,
    'private_gists' : privateGists,
    'total_private_repos' : totalPrivateRepos,
    'owned_private_repos' : ownedPrivateRepos,
    'disk_usage' : diskUsage,
    'collaborators' : collaborators,
    'two_factor_authentication' : twoFactorAuthentication,
    'plan' : plan?.toJson()
  };
}

class Plan {
  final String? name;
  final int? space;
  final int? collaborators;
  final int? privateRepos;

  Plan({
    this.name,
    this.space,
    this.collaborators,
    this.privateRepos,
  });

  Plan.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        space = json['space'] as int?,
        collaborators = json['collaborators'] as int?,
        privateRepos = json['private_repos'] as int?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'space' : space,
    'collaborators' : collaborators,
    'private_repos' : privateRepos
  };
}