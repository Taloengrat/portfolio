class EducationModel {
  String univercity;
  String department;
  String year;
  String logoPath;
  EducationModel({
    required this.univercity,
    required this.department,
    required this.year,
    required this.logoPath,
  });
}

List<EducationModel> educationModelData = [
  EducationModel(
    univercity: 'Triamudomsuksanomklao Pathumthani School',
    department: 'Mathematics-Science',
    year: '2013',
    logoPath: 'university_icon.jpg',
  ),
  EducationModel(
    univercity: 'Ragamangala University Of Technology Thanyaburi',
    department: 'Computer Engineering',
    year: '2016',
    logoPath: 'university_icon.jpg',
  ),
];
