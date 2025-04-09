import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:gridview_test/widgets/gridview.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_column.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Column(
              children: [
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.lightBlueAccent),
                    child: const CircleAvatar(
                      foregroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D"),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text("Radha",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    )),
                Text("Travelling,Reading & Podcasting",
                    style: Theme.of(context).textTheme.bodyMedium),
                TextButton.icon(
                  onPressed: () {},
                  label: Text("Edit the profile",
                      style: Theme.of(context).textTheme.labelMedium),
                  icon: const Icon(Icons.edit),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomColumn(
                      children: [
                        const Text("Posts"),
                        const Text("75", style: TextStyle(fontSize: 20))
                      ],
                    ),
                    CustomColumn(
                      children: [
                        const Text("Followers"),
                        const Text("735", style: TextStyle(fontSize: 20))
                      ],
                    ),
                    CustomColumn(
                      children: [
                        const Text("Following"),
                        const Text("120", style: TextStyle(fontSize: 20))
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(child: CustomGridView()),
          ])),
    );
  }
}
// asd
