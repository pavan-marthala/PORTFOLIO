import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';

List<ProjectModel> prokects = [ProjectModel()];
ProjectModel featuredProject = ProjectModel(
  badge: "Featured",
  title: "Genuine Match",
  coverImage: "https://i.ibb.co/vCzHjtpV/genuine-match.png",
  excerpt:
      "A secure Aadhaar-verified matrimony platform connecting genuine profiles with EMQX-based real-time chat.",
  date: DateTime(2023, 5, 20).toString(),
  client: "Theja Technologies Private Limited",
  role: "Lead Full Stack Developer",
  duration: "6 months",
  status: "Live",
  overview:
      "Genuine Match is a next-generation matrimony application focused on authenticity and trust. Unlike traditional dating or matrimony apps, it integrates Aadhaar-based KYC verification to ensure every user is genuine. The app features intelligent matchmaking, profile recommendations, chat via MQTT (EMQX), and a modern Flutter UI backed by a powerful Spring Boot backend.",
  tags: [
    "Matrimony",
    "KYC Verification",
    "Real-time Chat",
    "Flutter",
    "Spring Boot",
    "MongoDB",
    "EMQX",
    "IoT-grade Messaging",
  ],
  stats: [
    Stats(label: "Downloads", value: "50K+"),
    Stats(label: "REST APIs", value: "150+"),
    Stats(label: "Verified Profiles", value: "30K+"),
    Stats(label: "Team Size", value: "1Lead + 2"),
    Stats(label: "Technologies", value: "4"),
    Stats(label: "Duration", value: "6 months"),
    Stats(label: "Launch Date", value: "Feb 2024"),
    Stats(label: "Sprint Cycles", value: "12"),
  ],
  features: [
    Features(
      title: "Aadhaar-based KYC Verification",
      label: "Ensures user authenticity and eliminates fake profiles.",
      uniCode: "1FAAA",
    ),
    Features(
      title: "Intelligent Matchmaking",
      label:
          "Filters profiles dynamically based on preferences like religion, caste, zodiac, height, and location.",
      uniCode: "1F4BB",
    ),
    Features(
      title: "Real-time Chat with EMQX",
      label:
          "MQTT-powered chat with support for text, media, and voice messages.",
      uniCode: "1F4AC",
    ),
  ],
  techStack: [
    TechStack(title: "Flutter", uniCode: "1F4F1"),
    TechStack(title: "Spring Boot", uniCode: "1F4BB"),
    TechStack(title: "MongoDB", uniCode: "1F4BE"),
    TechStack(title: "EMQX", uniCode: "1F4E1"),
  ],
  projectLinks: [
    ProjectLinks(
      title: "Website",
      link: "https://genuinematch.io",
      uniCode: "1F310",
    ),
    ProjectLinks(
      title: "Play Store",
      link:
          "https://play.google.com/store/apps/details?id=com.thejatechnologies.genuinematch",
      uniCode: "1F4F1",
    ),

    ProjectLinks(
      title: "App Store",
      link:
          "https://play.google.com/store/apps/details?id=com.thejatechnologies.genuinematch",
      uniCode: "1F4F1",
    ),
  ],
  challenge: Challenge(
    challenges: [
      "Implementing Aadhaar-based KYC verification securely within privacy guidelines.",
      "Designing a single backend that supports both normal and elite user apps with separate repositories.",
      "Replacing WebSockets with EMQX to achieve reliable real-time messaging.",
      "Building dynamic filter APIs for match suggestions and search.",
      "Managing local chat data storage while ensuring scalability and synchronization.",
    ],
    footer:
        "Each challenge pushed the architecture towards being modular, scalable, and production-ready.",
  ),
  solution: Solution(
    footer:
        "The result was a robust, secure, and scalable matrimony platform with an elegant user experience.",
    title: "Modular, Scalable Architecture with EMQX-powered Real-time Chat",
    solutions: [
      Solutions(
        title: "Modular Microservice Design",
        label:
            "Separated logic for normal and elite users using independent repositories with shared services.",
      ),
      Solutions(
        title: "MQTT for Real-time Messaging",
        label:
            "Integrated EMQX with a global connection setup in Flutter using Provider for efficiency.",
      ),
      Solutions(
        title: "Scalable Hosting & Mail System",
        label:
            "Deployed on AWS EC2 with a self-hosted mail server for unlimited transactional emails.",
      ),
      Solutions(
        title: "Dynamic Filters & Configurations",
        label:
            "Created flexible APIs for match suggestions and searches based on multiple user preferences.",
      ),
    ],
  ),
);
