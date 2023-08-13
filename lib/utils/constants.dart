typedef StringMap = Map<String, dynamic>;

String about = '''
I first started dabbling in front-end development during my 12th grade year, creating React apps in my free time. This led me to discover Flutter, an exciting new framework I dove headfirst into learning. I landed my first internship as a Flutter developer while studying engineering in college. After honing my skills there for a year, I moved on to another internship with even more opportunities to grow.

Now, I work full-time as a software engineer at the company where I had my first internship. I thrive on crafting clean, structured code and pixel-perfect UI designs. Debugging and solving bugs is rewarding, since it expands my knowledge with each new solution.

When I'm not coding, you can find me going for runs to clear my head or chilling out watching movies. I also have a tendency to procrastinate more than I should!

Overall, I love creating smooth front-end experiences and writing code that makes me proud. I'm always looking for new challenges to help me grow as a developer.
''';

List<StringMap> expList = [
  {
    "id": 1,
    "start": "July 23",
    "end": "Present",
    "title": "Software Development Engineer",
    "company": "AI Bharata",
    "description":
        "Developed a restaurant booking app, 'Sylo' using Flutter. And also an admin app for the restaurant owners to manage their restaurants. Developing another app 'Myaira', used for AI medical analysis.",
    "skills": ["Flutter", "Firebase", "Riverpod"]
  },
  {
    "id": 1,
    "start": "Jan",
    "end": "June 23",
    "title": "Software Engineer Intern",
    "company": "Xero Apps Private Limited",
    "description":
        "Contributed to a Flutter billing and inventory app called 'Kirana Fast' using Clean Architecture and Firebase. Managed databases, synchronized systems, and designed adaptive views. Integrated thermal printing (ESC POS), customized mobile plugins, and staggered animations.",
    "skills": [
      "Flutter",
      "Clean Architecture",
      "Firebase",
      "SQL",
      "Drift",
      "Android",
      "iOS"
    ]
  },
  {
    "id": 2,
    "start": "Feb",
    "end": "Dec 22",
    "title": "Flutter Developer Intern",
    "company": "AI Bharata",
    "description":
        "Key role in AMPIY, a cryptocurrency trading app. Integrated APIs, modernized screens, and used graphs for visual appeal. Implemented web sockets for real-time data, managed Git repositories, debugged existing code, and contributed to the development of AMPIY Wallet.",
    "skills": [
      "Flutter",
      "API Integration",
      "UI/UX Design",
      "Graphs",
      "Web Sockets",
      "Git"
    ]
  },
];

Map<String, dynamic> experience = {
  "start": "2018",
  "end": "Present",
  "title": "Senior Software Engineer",
  "company": "Upstatement",
  "description":
      "Deliver high-quality, robust production code for a diverse array of projects for clients including Harvard Business School, Everytown for Gun Safety, Pratt Institute, Koala Health, Vanderbilt University, The 19th News, and more. Provide leadership within engineering department through close collaboration, knowledge shares, and mentorship.",
  "skills": ["React", "React Native", "SCSS", "WordPress"]
};

const String bottomText = '''
Made with Flutter and coded in Visual Studio Code by yours truly. Deployed with Vercel. Inspiration drawn from https://brittanychiang.com/.
''';

Map<String, dynamic> projects = {
  "title": "Youtube Music Downloader",
  "description":
      "Deliver high-quality, robust production code for a diverse array of projects for clients including Harvard Business School, Everytown for Gun Safety, Pratt Institute, Koala Health, Vanderbilt University, The 19th News, and more. Provide leadership within engineering department through close collaboration, knowledge shares, and mentorship.",
  "skills": ["React", "React Native", "SCSS", "WordPress"],
};

List<StringMap> projectList = [
  {
    "id": 3,
    "title": "Mobile Music Discovery and Management",
    "description":
        "Crafted a Flutter-based music app allowing seamless YouTube music download, playlist management, and advanced playback controls. Integrated intuitive UI and backend functionalities. Proficient in Flutter, API integration, and user-centric design.",
    "skills": ["Flutter", "Dart", "API Integration"],
    "img":
        "https://github.com/RanjanKiran707/yt_music_downloader_player/blob/main/youtube.gif?raw=true",
  },
  {
    "id": 4,
    "title": "Hello Mom - Full Stack Healthcare Web App",
    "description":
        "Led the development of 'Hello Mom,' a comprehensive healthcare app for pregnant women. Utilized Flutter Web, Express.js, MongoDB, and Flask. Features include Q&A forums, doctor updates, and ML-powered health assessment. Proficient in full-stack development, API integration, and practical machine learning.",
    "skills": [
      "Flutter Web",
      "Express.js",
      "MongoDB",
      "Flask",
      "Machine Learning"
    ],
    "img":
        "https://raw.githubusercontent.com/RanjanKiran707/cash_recorder/main/screenshots/4.jpeg",
  },
  {
    "id": 5,
    "title": "Cash Recorder - Expense Tracking App",
    "description":
        "Developed 'Cash Recorder,' a Flutter-based app for efficient expense tracking and nested bill management. Implements MVVM architecture, BLoC pattern, and Material 3 design. Proficient in Flutter, UI/UX design, and state management.",
    "skills": [
      "Flutter",
      "Dart",
      "MVVM Architecture",
      "BLoC Pattern",
      "Material 3"
    ],
    "img":
        "https://raw.githubusercontent.com/RanjanKiran707/cash_recorder/main/screenshots/4.jpeg",
  },
];
