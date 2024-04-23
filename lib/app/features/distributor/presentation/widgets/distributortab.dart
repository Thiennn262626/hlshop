import 'package:hlshop/all_file/all_file.dart';

class DistributorTab extends StatelessWidget {
  const DistributorTab({super.key, required this.distributorStatus});

  final DistributorStatus distributorStatus;

  @override
  Widget build(BuildContext context) {
    switch (distributorStatus) {
      case DistributorStatus.story:
        return const DistributorStore();
      case DistributorStatus.product:
        return const DistributorProduct();
      case DistributorStatus.category:
        return const DirectoryPage();
      case DistributorStatus.evaluate:
        return const AssessPage();
    }
  }
}
