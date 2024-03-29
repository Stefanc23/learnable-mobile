import 'package:flutter/material.dart';
import 'package:learnable/models/classroom.dart';
import 'package:learnable/screens/add_assignment.dart';
import 'package:learnable/widgets/assign_card.dart';

class Assignment extends StatefulWidget {
  final Classroom classroom;
  const Assignment({Key? key, required this.classroom}) : super(key: key);

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    void _backOnTap() {
      Navigator.pop(context);
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: _backOnTap, child: const Icon(Icons.arrow_back_sharp)),
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                widget.classroom.name as String,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.white),
              )),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(64),
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Text(
                      'Assignment',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )),
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 12),
                if (widget.classroom.role == 'Instructor')
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddAssignment()));
                            },
                            icon: const Icon(Icons.add,
                                size: 18, color: Color(0xFF000000)),
                            label: Text('Create New',
                                style: Theme.of(context).textTheme.button),
                          ))),
                const SizedBox(height: 8),
                Expanded(
                    child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: AssignCard(
                        userRole: widget.classroom.role as String,
                        assignName: 'Test Exercise',
                        duedatetime: '31 January 2022 (23.59)',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: AssignCard(
                        userRole: widget.classroom.role as String,
                        assignName: 'Basic Kotlin Assignment',
                        duedatetime: '29 January 2022 (23.59)',
                        pastDeadline: true,
                      ),
                    ),
                  ],
                )),
              ]),
        ));
  }
}
