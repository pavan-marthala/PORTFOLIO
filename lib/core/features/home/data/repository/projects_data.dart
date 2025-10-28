import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';

import '../../../../utils/asset_icons.dart';

List<ProjectModel> projects = [
  ProjectModel(
    id: "1",
    badge: "Featured",
    title: "Genuine Match",
    coverImage:
        "https://pgmzqdiqzsnhbgxclcxi.supabase.co/storage/v1/object/public/Portfolio/genuine_match.png",
    excerpt:
        "A secure Aadhaar-verified matrimony platform connecting genuine profiles with EMQX-based real-time chat.",
    date: DateTime(2023, 5, 20).toString(),
    client: "Theja Technologies Private Limited",
    role: "Lead Full Stack Developer",
    duration: "6 months",
    status: "Live",
    overview:
        "Genuine Match is a next-generation matrimony platform built to ensure authenticity and trust in modern matchmaking. Unlike typical dating or matrimony apps, it integrates Aadhaar-based KYC verification to confirm user identity and eliminate fake profiles. The platform offers real-time chat, personalized recommendations, and a seamless user experience built using Flutter and Spring Boot.\n\nThe app focuses on meaningful connections through intelligent matchmaking filters such as religion, caste, zodiac, and location preferences. Its backend is powered by a scalable architecture designed for performance and security, supporting thousands of concurrent users.\n\nGenuine Match redefines digital matchmaking by combining real-time communication with verified user authenticity, offering a secure, elegant, and data-driven experience for every user.",
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
      TechStack(title: "Flutter", uniCode: flutter),
      TechStack(title: "Spring Boot", uniCode: spring),
      TechStack(title: "MongoDB", uniCode: mongoDB),
      TechStack(title: "EMQX", uniCode: chat),
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
  ),
  ProjectModel(
    id: "2",
    badge: "Mobile + Backend",
    title: "Genuine Match Elite",
    coverImage: "https://pgmzqdiqzsnhbgxclcxi.supabase.co/storage/v1/object/public/Portfolio/genuine_match_elite.jpg",
    excerpt:
        "A premium matrimony platform for elite users, built on the Genuine Match backend with a refined UI and exclusive verification process.",
    date: DateTime(2024, 12, 20).toString(),
    client: "Theja Technologies Private Limited",
    role: "Lead Full Stack Developer",
    duration: "6 months",
    status: "In Development",
    overview:
        "Genuine Match Elite is the premium edition of the Genuine Match platform, built exclusively for elite users who seek verified, professional, and high-value connections. It shares the same backend foundation as Genuine Match but introduces an elevated experience through enhanced UI, separate elite data structures, and sophisticated verification methods such as passport or corporate ID checks.\n\nThis variant delivers an exclusive environment where elite users enjoy premium matchmaking algorithms, refined aesthetics, and additional parameters like lifestyle, income, and profession-based preferences. Despite being a standalone app, it leverages the shared backend logic with conditional elite user flows.\n\nBy combining shared infrastructure with a dedicated data model, Genuine Match Elite achieves scalability and exclusivity, giving users a luxurious and trusted matrimony experience without sacrificing backend efficiency.",
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
      Stats(label: "REST APIs", value: "150+"),
      Stats(label: "Verified Profiles", value: "30K+"),
      Stats(label: "Team Size", value: "1Lead + 2"),
      Stats(label: "Technologies", value: "4"),
      Stats(label: "Duration", value: "6 months"),
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
      TechStack(title: "Flutter", uniCode: flutter),
      TechStack(title: "Spring Boot", uniCode: spring),
      TechStack(title: "MongoDB", uniCode: mongoDB),
      TechStack(title: "AWS", uniCode: aws),
      TechStack(title: "EMQX", uniCode: chat),
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
      title: "Designing a Premium Layer Without Duplicating the Core",
      challenges: [
        "Implementing Aadhaar-based KYC verification securely within privacy guidelines.",
        "Designing a single backend that supports both normal and elite user apps with separate repositories.",
        "Replacing WebSockets with EMQX to achieve reliable real-time messaging.",
        "Building dynamic filter APIs for match suggestions and search.",
        "Managing local chat data storage while ensuring scalability and synchronization.",
      ],
      footer:
          "The modular architecture allowed rapid development of the elite app without backend duplication.",
    ),
    solution: Solution(
      footer:
          "The result was a robust, secure, and scalable matrimony platform with an elegant user experience.",
      title: "Seamless Integration of Elite Experiences on a Shared Backbone",
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
  ),
  ProjectModel(
    id: "3",
    badge: "Event Booking",
    title: "Jolly Junction",
    coverImage: "https://pgmzqdiqzsnhbgxclcxi.supabase.co/storage/v1/object/public/Portfolio/J.png",
    excerpt:
        "An all-in-one event and entertainment booking platform for theatres, theme parks, and kids zones.",
    date: DateTime(2024, 10, 02).toString(),
    client: "Jollyjunction Bookings Private Limited",
    role: "Full Stack Developer",
    duration: "1 year",
    status: "Live",
    overview:
        "Jolly Junction is a comprehensive event and entertainment booking platform designed to unify theatres, adventure parks, and kids zones under one ecosystem. It allows users to seamlessly explore, compare, and book experiences ranging from private movie screenings to water rides and theme park adventures. The platform provides dynamic slot management, real-time booking availability, and flexible partner integrations.\n\nBuilt with Spring Boot and MongoDB, Jolly Junction features a modular architecture that supports a wide variety of entities, from theatres with halls to parks with categorized activities. Its Offer Management and Webhook systems further enhance partner collaboration and automate bookings across external systems.\n\nBy focusing on scalability, flexibility, and user experience, Jolly Junction delivers a powerful foundation for modern entertainment management, enabling both customers and partners to enjoy a connected and efficient digital experience.",
    tags: [
      "Booking System",
      "Modular Architecture",
      "Spring Boot",
      "MongoDB",
      "Webhooks",
      "Offer Engine",
      "Flutter",
      "Event Management",
    ],
    stats: [
      Stats(label: "Downloads", value: "50K+"),
      Stats(label: "REST APIs", value: "150+"),
      Stats(label: "Team Size", value: "1Lead + 2"),
      Stats(label: "Technologies", value: "4"),
      Stats(label: "Duration", value: "1 year"),
      Stats(label: "Launch Date", value: "Oct 2024"),
      Stats(label: "Sprint Cycles", value: "20"),
    ],
    features: [
      Features(
        title: "Dynamic Theatre Slot System",
        label:
            "Supports theatre halls with time-based slot configurations and dynamic pricing.",
        uniCode: "1F37F",
      ),
      Features(
        title: "Theme Park & Adventure Activities",
        label: "Categorized into adventure, aquatic, and theme park rides.",
        uniCode: "1F3A2",
      ),
      Features(
        title: "Offer Management & Rule Engine",
        label:
            "Supports flexible offers such as combo offers, theatre offers, and package deals.",
        uniCode: "1F4DC",
      ),
      Features(
        title: "Partner & Admin Dashboards",
        label:
            "Enables theatre owners and park partners to manage bookings and offers.",
        uniCode: "1F9D1",
      ),
    ],
    techStack: [
      TechStack(title: "Flutter", uniCode: flutter),
      TechStack(title: "Spring Boot", uniCode: spring),
      TechStack(title: "MongoDB", uniCode: mongoDB),
      TechStack(title: "AWS", uniCode: aws),
    ],
    projectLinks: [
      ProjectLinks(
        title: "Website",
        link: "https://jollyjunction.in",
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
        "Designing a flexible model to handle theatres, theme parks, and kids zones under one schema.",
        "Implementing a polymorphic offer management system for multiple entity types.",
        "Building a webhook system with ID mapping for external theatre websites.",
        "Ensuring scalability for diverse booking patterns and dynamic pricing.",
      ],
      footer:
          "The modular data architecture made it possible to scale across multiple entertainment domains.",
      title:
          "Engineering a Unified Architecture for Diverse Entertainment Models",
    ),
    solution: Solution(
      footer:
          "Resulted in a production-grade entertainment booking ecosystem with partner integrations.",
      title:
          "A Modular, Scalable Booking Platform for Multi-Domain Experiences",
      solutions: [
        Solutions(
          title: "Polymorphic Offer Engine",
          label:
              "Implemented a generic rule engine that supports entity-specific offer logic.",
        ),
        Solutions(
          title: "Webhook Mapper",
          label:
              "Mapped internal IDs to external partner IDs during booking, ensuring seamless integrations.",
        ),
        Solutions(
          title: "Modular Category Framework",
          label:
              "Unified structure for theatres, theme parks, and kids zones with shared booking logic.",
        ),
        Solutions(
          title: "Dynamic Filters & Configurations",
          label:
              "Created flexible APIs for match suggestions and searches based on multiple user preferences.",
        ),
      ],
    ),
  ),
  ProjectModel(
    id: "4",
    badge: "Partner Management",
    title: "Jolly Junction Partner",
    coverImage: "https://pgmzqdiqzsnhbgxclcxi.supabase.co/storage/v1/object/public/Portfolio/jj_p.jpg",
    excerpt:
        "Partner-focused management system enabling theatre owners and park operators to manage bookings, offers, and revenue reports.",
    date: DateTime(2024, 10, 02).toString(),
    client: "Jollyjuncation Bookings Private Limited",
    role: "Full Stack Developer",
    duration: "6 months",
    status: "Live",
    overview:
        "Jolly Junction Partner is a companion platform built for venue owners, theatre operators, and theme park partners to manage their operations efficiently. It provides partners with tools to onboard venues, create and manage offers, track bookings, and access revenue analytics—all in real time.\n\nDesigned as an extension of the Jolly Junction ecosystem, this platform integrates directly with the core backend, ensuring synchronized data flow between users, admins, and partners. Its responsive Flutter Web dashboard enables partners to monitor live bookings, performance metrics, and offer campaigns.\n\nBy empowering partners with control and transparency, Jolly Junction Partner bridges the gap between venue management and customer engagement, making it a vital component of the overall Jolly Junction experience.",
    tags: [
      "Partner Portal",
      "Offer Management",
      "Booking Insights",
      "Spring Boot",
      "Flutter",
      "MongoDB",
      "Webhook",
    ],
    stats: [
      Stats(label: "Downloads", value: "50K+"),
      Stats(label: "REST APIs", value: "150+"),
      Stats(label: "Team Size", value: "1Lead + 2"),
      Stats(label: "Technologies", value: "4"),
      Stats(label: "Duration", value: "6 months"),
      Stats(label: "Launch Date", value: "Oct 2024"),
      Stats(label: "Sprint Cycles", value: "12"),
    ],
    features: [
      Features(
        title: "Partner Onboarding & Verification",
        label:
            "Partners can register and verify their theatre or park details with admin approval.",
        uniCode: "1FAAA",
      ),
      Features(
        title: "Offer Management Panel",
        label:
            "Partners can create, manage, and activate custom offers using the shared rule engine.",
        uniCode: "2699",
      ),
      Features(
        title: "Live Booking Insights",
        label:
            "Dashboard to track live bookings, cancellations, and slot utilization.",
        uniCode: "1F4C8",
      ),
      Features(
        title: "Admin Communication Portal",
        label:
            "Partners can raise tickets or support requests directly to the Jolly Junction admin team.",
        uniCode: "200D",
      ),
    ],
    techStack: [
      TechStack(title: "Flutter", uniCode: flutter),
      TechStack(title: "Spring Boot", uniCode: spring),
      TechStack(title: "MongoDB", uniCode: mongoDB),
      TechStack(title: "AWS", uniCode: aws),
    ],
    projectLinks: [
      ProjectLinks(
        title: "Website",
        link: "https://partner.jollyjuncation.in",
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
      title: "Empowering Partners With Control, Without Complexity",
      challenges: [
        "Designing partner-specific APIs that integrate smoothly with the Jolly Junction core.",
        "Implementing a shared offer rule engine accessible by both admin and partners.",
      ],
      footer:
          "Focused on simplicity, scalability, and seamless synchronization with the main platform.",
    ),
    solution: Solution(
      footer:
          "Empowered partners with control, insights, and integrations — all on a single interface.",
      title:
          "Delivering Real-Time Insights and Management Through Smart Integration",
      solutions: [
        Solutions(
          title: "Shared Offer Engine",
          label:
              "Enabled partners to use the same promotion system through controlled API access.",
        ),
        Solutions(
          title: "Modular API Layer",
          label:
              "Developed separate partner routes with shared service logic for consistency.",
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
  ),
  ProjectModel(
    id: "5",
    badge: "Microservices + Reactive",
    title: "Smart City Issue Management System",
    coverImage:
        "https://pgmzqdiqzsnhbgxclcxi.supabase.co/storage/v1/object/public/Portfolio/108504.jpg",
    excerpt:
        "A reactive microservices-based backend for managing civic issues in cities and villages, connecting citizens, workers, staff, and administrators.",
    date: DateTime(2023, 5, 20).toString(),
    client: "Self",
    role: "System Architect & Backend Developer",
    duration: "6 months",
    status: "Live",
    overview:
        "The Smart City Issue Management System is a reactive microservices-based platform designed to help city administrations efficiently manage civic issues raised by citizens. It connects multiple stakeholders—citizens, staff, workers, and administrators—through a transparent workflow that tracks issue reporting, assignment, and resolution in real time.\n\nDeveloped using Spring WebFlux and microservice architecture, the system ensures non-blocking, scalable performance, making it capable of handling thousands of concurrent requests. Citizens can raise issues with detailed descriptions and media, while staff and workers collaborate through task assignment and live status updates.\n\nBy leveraging reactive programming and event-driven communication, the platform provides a robust digital infrastructure for smart governance, improving civic response efficiency and accountability across cities and villages.",
    tags: [
      "Smart City",
      "Civic Management",
      "Reactive Programming",
      "Spring WebFlux",
      "Microservices",
      "MySQl",
      "Event-Driven Architecture",
    ],
    stats: [
      Stats(label: "REST APIs", value: "50+"),
      Stats(label: "Team Size", value: "1"),
      Stats(label: "Technologies", value: "3"),
      Stats(label: "Duration", value: "6 months"),
    ],
    features: [
      Features(
        title: "Citizen Issue Reporting",
        label:
            "Allows citizens to report civic issues with photos, location, and descriptions.",
        uniCode: "1F5F3",
      ),
      Features(
        title: "Role-Based Workflow",
        label:
            "Filters profiles dynamically based on preferences like religion, caste, zodiac, height, and location.",
        uniCode: "200D",
      ),
      Features(
        title: "Reactive Issue Tracking",
        label:
            "Built using Spring WebFlux for non-blocking and real-time updates.",
        uniCode: "1F575",
      ),
      Features(
        title: "Microservice Architecture",
        label:
            "Separate services for user management, issue handling, and notification delivery.",
        uniCode: "1F9E9",
      ),
      Features(
        title: "Notification System",
        label:
            "Sends alerts to citizens and staff during issue status updates.",
        uniCode: "1F4E3",
      ),
      Features(
        title: "Analytics & Reports",
        label:
            "Generates city-level performance dashboards for administrators.",
        uniCode: "1F4C8",
      ),
    ],
    techStack: [
      TechStack(title: "Spring WebFlux", uniCode: spring),
      TechStack(title: "Spring Boot", uniCode: spring),
      TechStack(title: "MySQL", uniCode: mySQL),
      TechStack(title: "AWS", uniCode: aws),
      TechStack(title: "Kafka", uniCode: kafka),
    ],
    projectLinks: [
      ProjectLinks(
        title: "Website",
        link: "https://genuinematch.io",
        uniCode: "1F310",
      ),
    ],
    challenge: Challenge(
      title: "Coordinating Real-Time Workflows Across Reactive Microservices",
      challenges: [
        "Designing a reactive pipeline that scales across thousands of users and city issues.",
        "Maintaining event consistency and synchronization between microservices.",
        "Implementing real-time updates without overloading the system.",
        "Defining clean separation of roles while ensuring communication between them.",
      ],
      footer:
          "The challenge was to combine scalability, responsiveness, and data integrity within a city-scale system.",
    ),
    solution: Solution(
      footer:
          "The result is a fast, scalable, and resilient backend enabling real-time civic issue management.",
      title: "Architecting a Reactive, Event-Driven Civic Platform",
      solutions: [
        Solutions(
          title: "Reactive Service Layer",
          label:
              "Leveraged WebFlux and Reactor to build fully non-blocking APIs for faster response times.",
        ),
        Solutions(
          title: "Kafka Event Bus",
          label:
              "Implemented an event-driven model for asynchronous communication between services.",
        ),
        Solutions(
          title: "Modular Microservice Design",
          label:
              "Separated services for scalability and independent deployments.",
        ),
        Solutions(
          title: "Comprehensive Role-Based Flow",
          label:
              "Defined specific operations for citizens, staff, workers, and administrators.",
        ),
      ],
    ),
  ),
];
ProjectModel featuredProject = ProjectModel(
  id: "6",
  badge: "Open Source",
  title: "Feature Management API",
  coverImage: "https://pgmzqdiqzsnhbgxclcxi.supabase.co/storage/v1/object/public/Portfolio/feature.jpg",
  excerpt:
      "An open-source backend service for managing feature flags and controlled feature rollouts using flexible, strategy-driven configurations.",
  date: DateTime(2023, 5, 20).toString(),
  client: "Open Source",
  role: "Backend Developer",
  duration: "Ongoing",
  status: "Ongoing",
  overview:
      "The Feature Management API is an open-source backend service designed to help developers dynamically control the release and behavior of application features. It offers a robust framework for defining feature flags and rollout strategies, enabling safe, incremental deployments without redeploying code.\n\nSupporting multiple strategies such as boolean toggles, user or role-based activation, time scheduling, and dynamic expressions, the system allows fine-grained control over how and when features are made available. Its flexible configuration layer makes it suitable for both enterprise-grade and open-source use cases.\n\nBy introducing a strategy-driven feature flag system, this API empowers development teams to adopt continuous delivery practices with confidence, reducing risk while increasing deployment flexibility across environments.",
  tags: [
    "Feature Flags",
    "Open Source",
    "Spring Boot",
    "Microservices",
    "Dynamic Configuration",
    "API Management",
    "Deployment Control",
  ],
  stats: [
    Stats(label: "REST APIs", value: "20+"),
    Stats(label: "Team Size", value: "2"),
    Stats(label: "Technologies", value: "2"),
  ],
  features: [
    Features(
      title: "Boolean Flags (Toggles)",
      label: "Simple true/false feature enablement for quick rollouts.",
      uniCode: "1F51B",
    ),
    Features(
      title: "User-Based Flags",
      label: "Enable features for specific users or user groups.",
      uniCode: "1F464",
    ),
    Features(
      title: "Role-Based Flags",
      label: "Control feature visibility based on user roles and permissions.",
      uniCode: "1F9D1",
    ),
    Features(
      title: "Time-Based Scheduling",
      label: "Activate or deactivate features at a defined schedule.",
      uniCode: "23F0",
    ),
    Features(
      title: "Dynamic Expressions",
      label: "Evaluate custom conditions for runtime feature control.",
      uniCode: "1F9FE",
    ),
    Features(
      title: "HTTP Header & Request-Based Control",
      label:
          "Enable features based on incoming HTTP headers or request parameters.",
      uniCode: "1F511",
    ),
  ],
  techStack: [
    TechStack(title: "Spring Boot", uniCode: spring),
    TechStack(title: "postgresql", uniCode: postgresql),
    TechStack(title: "Docker", uniCode: docker),
  ],
  projectLinks: [
    ProjectLinks(
      title: "GitHub Repository",
      link: "https://github.com/pavan-marthala/feature-management",
      uniCode: "1F310",
    ),
  ],
  challenge: Challenge(
    title: "Designing Flexible Yet Performant Strategy Evaluation",
    challenges: [
      "Creating a unified structure to support multiple feature control strategies.",
      "Ensuring low-latency evaluation of feature flags at runtime.",
      "Designing an extensible system for adding custom strategies easily.",
      "Maintaining configuration consistency across distributed environments.",
    ],
    footer:
        "The key challenge was balancing flexibility with simplicity for real-world production use.",
  ),
  solution: Solution(
    footer:
        "The system provides a robust and developer-friendly way to control feature rollouts at scale.",
    title: "Building a Strategy-Driven, Extensible Core Engine",
    solutions: [
      Solutions(
        title: "Modular Strategy Framework",
        label:
            "Developed a plug-in-based structure to support new flag strategies without code duplication.",
      ),
      Solutions(
        title: "Lightweight Evaluation Layer",
        label:
            "Optimized strategy evaluation for sub-millisecond response times.",
      ),
      Solutions(
        title: "Configurable Persistence",
        label: "Used postgresql for flexible flag storage and runtime caching.",
      ),
      Solutions(
        title: "API-First Design",
        label:
            "Built RESTful APIs for integration with frontend dashboards and CI/CD systems.",
      ),
    ],
  ),
);
