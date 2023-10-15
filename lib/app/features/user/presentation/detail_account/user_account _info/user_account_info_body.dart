import 'package:flutter/cupertino.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/cubit/detail_account_cubit.dart';

class UserAccountInfoBody extends StatelessWidget {
  const UserAccountInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<DetailAccountCubit, DetailAccountState>(
            builder: (context, state) {
              final name = state.name;
              return TextFormField(
                initialValue: name,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    color: Colors.black,
                    icon: const Icon(CupertinoIcons.clear_circled_solid),
                    onPressed: () {
                      context.read<DetailAccountCubit>().changeName('');
                    },
                  ),
                ),
                onChanged: (value) {
                  context.read<DetailAccountCubit>().changeName(value);
                },
              );
            },
          ),
        ],
      ).pxDefault(),
    );
  }
}
