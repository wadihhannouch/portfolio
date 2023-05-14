import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../../components/custom_animated_widget.dart';
import '../../../constants.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isDesktop(context) ? EdgeInsets.zero : const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          Responsive(
            mobile: ProjectsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: ProjectsGridView(crossAxisCount: 2),
            tablet: ProjectsGridView(childAspectRatio: 1.1),
            desktop: ProjectsGridView(),
          )
        ],
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ShowUpAnimation(
        delayStart: Duration(milliseconds: 300 ),
        animationDuration: Duration(milliseconds: 300 + (index*300)),
        curve: Curves.bounceIn,
        direction: Direction.vertical,
        offset: 0.1,
        child: ProjectCard(

          project: demo_projects[index],
        ),
      ),
    );
  }
}
