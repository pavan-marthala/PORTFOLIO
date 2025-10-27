class ProjectModel {
  final String id;
  final String? badge;
  final String? title;
  final String? excerpt;
  final String? date;
  final String? client;
  final String? duration;
  final String? coverImage;
  final String? role;
  final String? status;
  final String? overview;
  final List<String>? tags;
  final List<Stats>? stats;
  final List<Features>? features;
  final List<TechStack>? techStack;
  final List<ProjectLinks>? projectLinks;
  final Challenge? challenge;
  final Solution? solution;
  const ProjectModel({
    required this.id,
    this.badge,
    this.title,
    this.excerpt,
    this.date,
    this.client,
    this.duration,
    this.coverImage,
    this.role,
    this.status,
    this.overview,
    this.tags,
    this.stats,
    this.features,
    this.techStack,
    this.projectLinks,
    this.challenge,
    this.solution,
  });
  ProjectModel copyWith({
    String? badge,
    String? title,
    String? excerpt,
    String? date,
    String? client,
    String? duration,
    String? coverImage,
    String? role,
    String? status,
    String? overview,
    List<String>? tags,
    List<Stats>? stats,
    List<Features>? features,
    List<TechStack>? techStack,
    List<ProjectLinks>? projectLinks,
    Challenge? challenge,
    Solution? solution,
  }) {
    return ProjectModel(
      id: id,
      badge: badge ?? this.badge,
      title: title ?? this.title,
      excerpt: excerpt ?? this.excerpt,
      date: date ?? this.date,
      client: client ?? this.client,
      duration: duration ?? this.duration,
      coverImage: coverImage ?? this.coverImage,
      role: role ?? this.role,
      status: status ?? this.status,
      overview: overview ?? this.overview,
      tags: tags ?? this.tags,
      stats: stats ?? this.stats,
      features: features ?? this.features,
      techStack: techStack ?? this.techStack,
      projectLinks: projectLinks ?? this.projectLinks,
      challenge: challenge ?? this.challenge,
      solution: solution ?? this.solution,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'badge': badge,
      'title': title,
      'excerpt': excerpt,
      'date': date,
      'client': client,
      'duration': duration,
      'coverImage': coverImage,
      'role': role,
      'status': status,
      'overview': overview,
      'tags': tags,
      'stats': stats
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'features': features
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'techStack': techStack
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'projectLinks': projectLinks
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'challenge': challenge?.toJson(),
      'solution': solution?.toJson(),
    };
  }

  static ProjectModel fromJson(Map<String, Object?> json) {
    return ProjectModel(
      id: json['id'] as String,
      badge: json['badge'] == null ? null : json['badge'] as String,
      title: json['title'] == null ? null : json['title'] as String,
      excerpt: json['excerpt'] == null ? null : json['excerpt'] as String,
      date: json['date'] == null ? null : json['date'] as String,
      client: json['client'] == null ? null : json['client'] as String,
      duration: json['duration'] == null ? null : json['duration'] as String,
      coverImage: json['coverImage'] == null
          ? null
          : json['coverImage'] as String,
      role: json['role'] == null ? null : json['role'] as String,
      status: json['status'] == null ? null : json['status'] as String,
      overview: json['overview'] == null ? null : json['overview'] as String,
      tags: json['tags'] == null ? null : json['tags'] as List<String>,
      stats: json['stats'] == null
          ? null
          : (json['stats'] as List)
                .map<Stats>(
                  (data) => Stats.fromJson(data as Map<String, Object?>),
                )
                .toList(),
      features: json['features'] == null
          ? null
          : (json['features'] as List)
                .map<Features>(
                  (data) => Features.fromJson(data as Map<String, Object?>),
                )
                .toList(),
      techStack: json['techStack'] == null
          ? null
          : (json['techStack'] as List)
                .map<TechStack>(
                  (data) => TechStack.fromJson(data as Map<String, Object?>),
                )
                .toList(),
      projectLinks: json['projectLinks'] == null
          ? null
          : (json['projectLinks'] as List)
                .map<ProjectLinks>(
                  (data) => ProjectLinks.fromJson(data as Map<String, Object?>),
                )
                .toList(),
      challenge: json['challenge'] == null
          ? null
          : Challenge.fromJson(json['challenge'] as Map<String, Object?>),
      solution: json['solution'] == null
          ? null
          : Solution.fromJson(json['solution'] as Map<String, Object?>),
    );
  }

  @override
  String toString() {
    return '''ProjectModel(
                badge:$badge,
title:$title,
excerpt:$excerpt,
date:$date,
client:$client,
duration:$duration,
coverImage:$coverImage,
role:$role,
status:$status,
overview:$overview,
tags:$tags,
stats:${stats.toString()},
features:${features.toString()},
techStack:${techStack.toString()},
projectLinks:${projectLinks.toString()},
challenge:${challenge.toString()},
solution:${solution.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectModel &&
        other.runtimeType == runtimeType &&
        other.badge == badge &&
        other.title == title &&
        other.excerpt == excerpt &&
        other.date == date &&
        other.client == client &&
        other.duration == duration &&
        other.coverImage == coverImage &&
        other.role == role &&
        other.status == status &&
        other.overview == overview &&
        other.tags == tags &&
        other.stats == stats &&
        other.features == features &&
        other.techStack == techStack &&
        other.projectLinks == projectLinks &&
        other.challenge == challenge &&
        other.solution == solution;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      badge,
      title,
      excerpt,
      date,
      client,
      duration,
      coverImage,
      role,
      status,
      overview,
      tags,
      stats,
      features,
      techStack,
      projectLinks,
      challenge,
      solution,
    );
  }
}

class Solution {
  final String? title;
  final List<Solutions>? solutions;
  final String? footer;
  const Solution({this.title, this.solutions, this.footer});
  Solution copyWith({
    String? title,
    List<Solutions>? solutions,
    String? footer,
  }) {
    return Solution(
      title: title ?? this.title,
      solutions: solutions ?? this.solutions,
      footer: footer ?? this.footer,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'title': title,
      'solutions': solutions
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'footer': footer,
    };
  }

  static Solution fromJson(Map<String, Object?> json) {
    return Solution(
      title: json['title'] == null ? null : json['title'] as String,
      solutions: json['solutions'] == null
          ? null
          : (json['solutions'] as List)
                .map<Solutions>(
                  (data) => Solutions.fromJson(data as Map<String, Object?>),
                )
                .toList(),
      footer: json['footer'] == null ? null : json['footer'] as String,
    );
  }

  @override
  String toString() {
    return '''Solution(
                title:$title,
solutions:${solutions.toString()},
footer:$footer
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Solution &&
        other.runtimeType == runtimeType &&
        other.title == title &&
        other.solutions == solutions &&
        other.footer == footer;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, title, solutions, footer);
  }
}

class Solutions {
  final String? title;
  final String? label;
  const Solutions({this.title, this.label});
  Solutions copyWith({String? title, String? label}) {
    return Solutions(title: title ?? this.title, label: label ?? this.label);
  }

  Map<String, Object?> toJson() {
    return {'title': title, 'label': label};
  }

  static Solutions fromJson(Map<String, Object?> json) {
    return Solutions(
      title: json['title'] == null ? null : json['title'] as String,
      label: json['label'] == null ? null : json['label'] as String,
    );
  }

  @override
  String toString() {
    return '''Solutions(
                title:$title,
label:$label
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Solutions &&
        other.runtimeType == runtimeType &&
        other.title == title &&
        other.label == label;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, title, label);
  }
}

class Challenge {
  final String? title;
  final List<String>? challenges;
  final String? footer;
  const Challenge({this.title, this.challenges, this.footer});
  Challenge copyWith({
    String? title,
    List<String>? challenges,
    String? footer,
  }) {
    return Challenge(
      title: title ?? this.title,
      challenges: challenges ?? this.challenges,
      footer: footer ?? this.footer,
    );
  }

  Map<String, Object?> toJson() {
    return {'title': title, 'challenges': challenges, 'footer': footer};
  }

  static Challenge fromJson(Map<String, Object?> json) {
    return Challenge(
      title: json['title'] == null ? null : json['title'] as String,
      challenges: json['challenges'] == null
          ? null
          : json['challenges'] as List<String>,
      footer: json['footer'] == null ? null : json['footer'] as String,
    );
  }

  @override
  String toString() {
    return '''Challenge(
                title:$title,
challenges:$challenges,
footer:$footer
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Challenge &&
        other.runtimeType == runtimeType &&
        other.title == title &&
        other.challenges == challenges &&
        other.footer == footer;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, title, challenges, footer);
  }
}

class ProjectLinks {
  final String? uniCode;
  final String? title;
  final String? link;
  const ProjectLinks({this.uniCode, this.title, this.link});
  ProjectLinks copyWith({String? uniCode, String? title, String? link}) {
    return ProjectLinks(
      uniCode: uniCode ?? this.uniCode,
      title: title ?? this.title,
      link: link ?? this.link,
    );
  }

  Map<String, Object?> toJson() {
    return {'uniCode': uniCode, 'title': title, 'link': link};
  }

  static ProjectLinks fromJson(Map<String, Object?> json) {
    return ProjectLinks(
      uniCode: json['uniCode'] == null ? null : json['uniCode'] as String,
      title: json['title'] == null ? null : json['title'] as String,
      link: json['link'] == null ? null : json['link'] as String,
    );
  }

  @override
  String toString() {
    return '''ProjectLinks(
                uniCode:$uniCode,
title:$title,
link:$link
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectLinks &&
        other.runtimeType == runtimeType &&
        other.uniCode == uniCode &&
        other.title == title &&
        other.link == link;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, uniCode, title, link);
  }
}

class TechStack {
  final String? uniCode;
  final String? title;
  const TechStack({this.uniCode, this.title});
  TechStack copyWith({String? uniCode, String? title}) {
    return TechStack(
      uniCode: uniCode ?? this.uniCode,
      title: title ?? this.title,
    );
  }

  Map<String, Object?> toJson() {
    return {'uniCode': uniCode, 'title': title};
  }

  static TechStack fromJson(Map<String, Object?> json) {
    return TechStack(
      uniCode: json['uniCode'] == null ? null : json['uniCode'] as String,
      title: json['title'] == null ? null : json['title'] as String,
    );
  }

  @override
  String toString() {
    return '''TechStack(
                uniCode:$uniCode,
title:$title
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is TechStack &&
        other.runtimeType == runtimeType &&
        other.uniCode == uniCode &&
        other.title == title;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, uniCode, title);
  }
}

class Features {
  final String? uniCode;
  final String? title;
  final String? label;
  const Features({this.uniCode, this.title, this.label});
  Features copyWith({String? uniCode, String? title, String? label}) {
    return Features(
      uniCode: uniCode ?? this.uniCode,
      title: title ?? this.title,
      label: label ?? this.label,
    );
  }

  Map<String, Object?> toJson() {
    return {'uniCode': uniCode, 'title': title, 'label': label};
  }

  static Features fromJson(Map<String, Object?> json) {
    return Features(
      uniCode: json['uniCode'] == null ? null : json['uniCode'] as String,
      title: json['title'] == null ? null : json['title'] as String,
      label: json['label'] == null ? null : json['label'] as String,
    );
  }

  @override
  String toString() {
    return '''Features(
                uniCode:$uniCode,
title:$title,
label:$label
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Features &&
        other.runtimeType == runtimeType &&
        other.uniCode == uniCode &&
        other.title == title &&
        other.label == label;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, uniCode, title, label);
  }
}

class Stats {
  final String? label;
  final String? value;
  const Stats({this.label, this.value});
  Stats copyWith({String? label, String? value}) {
    return Stats(label: label ?? this.label, value: value ?? this.value);
  }

  Map<String, Object?> toJson() {
    return {'label': label, 'value': value};
  }

  static Stats fromJson(Map<String, Object?> json) {
    return Stats(
      label: json['label'] == null ? null : json['label'] as String,
      value: json['value'] == null ? null : json['value'] as String,
    );
  }

  @override
  String toString() {
    return '''Stats(
                label:$label,
value:$value
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Stats &&
        other.runtimeType == runtimeType &&
        other.label == label &&
        other.value == value;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, label, value);
  }
}
