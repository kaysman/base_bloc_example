import 'package:eduapp_flutter/features/root/widgets/school_headline.dart';
import 'package:eduapp_flutter/features/root/widgets/school_info_sheet.dart';
import 'package:flutter/material.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              const SchoolHeadline(),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverList.list(
                children: [
                  SchoolCard(),
                  SchoolCard(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SchoolCard extends StatelessWidget {
  const SchoolCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const SchoolInfoSheet();
              },
            );
          },
          borderRadius: borderRadius,
          child: Card(
            elevation: 4,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            child: SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: borderRadius,
                      ),
                      child: const Icon(
                        Icons.school,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'American Institution',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Generates GraphQL schemas from gRPC Protocol Buffers and creates the server or gRPC client. - GitHub - single9/node-grpc-graphql-server.',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Text(
                                'Number of students: ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                '100',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
