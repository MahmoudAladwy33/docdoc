import 'package:flutter/material.dart';
import 'package:medilink/features/home/ui/widgets/doctors_list_view_item.dart';
import '../../data/models/specialization_response_model.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
