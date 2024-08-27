class WorkoutModel {
  bool viewed;
  final String fileUrl;
  final String title;
  final String videoLength;

  WorkoutModel(
      {required this.viewed,
        required this.fileUrl,
        required this.title,
        required this.videoLength});

  static List<WorkoutModel> exerciseDetail = [
    WorkoutModel(
        viewed: true,
        fileUrl: "",
        title: "Reverse Crunch",
        videoLength: "3 minutes"),
    WorkoutModel(
        viewed: true,
        fileUrl: "",
        title: "Leg Press Machine",
        videoLength: "5 minutes"),
    WorkoutModel(
        viewed: false,
        fileUrl: "",
        title: "Lateral Raises",
        videoLength: "12 minutes"),
    WorkoutModel(
        viewed: false,
        fileUrl: "",
        title: "Advanced Workout Routine",
        videoLength: "12 minutes"),
  ];
}
