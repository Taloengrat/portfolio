import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';

class EducationModel {
  String enUniversity;
  String thUniversity;
  String enDepartment;
  String thDepartment;
  String yearEn;
  String yearTh;
  String logoPath;
  Color color;
  EducationModel({
    required this.enUniversity,
    required this.thUniversity,
    required this.enDepartment,
    required this.thDepartment,
    required this.yearEn,
    required this.yearTh,
    required this.logoPath,
    required this.color,
  });
}

List<EducationModel> educationModelData = [
  EducationModel(
    enUniversity: 'Triamudomsuksanomklao Pathumthani School',
    thUniversity: 'โรงเรียนเตรียมอุดมศึกษาน้อมเกล้า ปทุมธานี',
    enDepartment: 'Mathematics-Science',
    thDepartment: 'วิทยาศาสตร์-คณิตศาสตร์',
    yearEn: '2013',
    yearTh: '2556',
    logoPath: 'university_icon.jpg',
    color: secondColor,
  ),
  EducationModel(
    enUniversity: 'Ragamangala University Of Technology Thanyaburi',
    thUniversity: 'มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี',
    enDepartment: 'Computer Engineering',
    thDepartment: 'วิศวกรรมคอมพิวเตอร์',
    yearEn: '2016',
    yearTh: '2559',
    logoPath: 'university_icon.jpg',
    color: thridColor,
  ),
];
