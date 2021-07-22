import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/screens/main_screen/components/activities_component.dart';
import 'package:taloengrat_cv/screens/main_screen/components/contact_component.dart';
import 'package:taloengrat_cv/screens/main_screen/components/education_component.dart';
import 'package:taloengrat_cv/screens/main_screen/components/myskill_component.dart';
import 'package:taloengrat_cv/screens/main_screen/components/mystory_component.dart';
import 'package:taloengrat_cv/screens/main_screen/components/sidebar_contact.dart';

import 'components/header_component.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/';
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _scrollController = ScrollController();
  GlobalKey _keyMyStory = GlobalKey();
  GlobalKey _keyMySkill = GlobalKey();
  GlobalKey _keyActivities = GlobalKey();
  GlobalKey _keyEducation = GlobalKey();
  GlobalKey _keyContact = GlobalKey();

  List<double> _listTopicPosition = [];
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance!.addPostFrameCallback(_afterRender);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MainScreen oldWidget) {
    // TODO: implement didUpdateWidget
    print('update');
    WidgetsBinding.instance!.addPostFrameCallback(_afterRender);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  _getMyStoryPosition() {
    final RenderBox? myStotyBox =
        _keyMyStory.currentContext!.findRenderObject() as RenderBox;
    final position = myStotyBox!.localToGlobal(Offset.zero);
    log(position.toString(), name: 'MyStory position');
    _listTopicPosition.add(position.dy);
    log('add myStory ${position.dy} to listTopicPosition',
        name: 'listTopicPosition');
  }

  _getMySkillPosition() {
    final RenderBox? mySkillBox =
        _keyMySkill.currentContext!.findRenderObject() as RenderBox;
    final position = mySkillBox!.localToGlobal(Offset.zero);
    log(position.toString(), name: 'MySkill position');
    _listTopicPosition.add(position.dy);
    log('add mySkill ${position.dy} to listTopicPosition',
        name: 'listTopicPosition');
  }

  _getActivity() {
    final RenderBox? activityBox =
        _keyActivities.currentContext!.findRenderObject() as RenderBox;
    final position = activityBox!.localToGlobal(Offset.zero);
    log(position.toString(), name: 'Activities position');
    _listTopicPosition.add(position.dy);
    log('add Activity ${position.dy} to listTopicPosition',
        name: 'listTopicPosition');
  }

  _getEducation() {
    final RenderBox? activityBox =
        _keyEducation.currentContext!.findRenderObject() as RenderBox;
    final position = activityBox!.localToGlobal(Offset.zero);
    log(position.toString(), name: 'Education position');
    _listTopicPosition.add(position.dy);
    log('add Education ${position.dy} to listTopicPosition',
        name: 'listTopicPosition');
  }

  _getContact() {
    final RenderBox? activityBox =
        _keyContact.currentContext!.findRenderObject() as RenderBox;
    final position = activityBox!.localToGlobal(Offset.zero);
    log(position.toString(), name: 'Contact position');
    _listTopicPosition.add(position.dy);
    log('add Contact ${position.dy} to listTopicPosition',
        name: 'listTopicPosition');

    setState(() {
      log('set');
    });
  }

  _afterRender(_) {
    log('AFTER RENDER');
    _getMyStoryPosition();
    _getMySkillPosition();
    _getActivity();
    _getEducation();
    _getContact();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      var afterRender = _afterRender;
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HeaderComponent(
                  size: size,
                  scrollController: _scrollController,
                  listTopicPosition: _listTopicPosition,
                ),
                SizedBox(
                  height: defaultSpace * 2,
                ),
                MyStoryComponent(
                  key: _keyMyStory,
                  size: size,
                ),
                SizedBox(
                  height: defaultSpace * 2,
                ),
                MySkillComponent(
                  key: _keyMySkill,
                  size: size,
                ),
                SizedBox(
                  height: defaultSpace * 2,
                ),
                ActivitiesComponent(
                  key: _keyActivities,
                  size: size,
                ),
                SizedBox(
                  height: defaultSpace * 2,
                ),
                EducationComponent(
                  key: _keyEducation,
                  size: size,
                ),
                SizedBox(
                  height: defaultSpace * 2,
                ),
                ContactComponent(
                  key: _keyContact,
                  size: size,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 50,
              height: 200,
              child: SideBarContactComponent(),
            ),
          ),
        ],
      ),
    );
  }
}
