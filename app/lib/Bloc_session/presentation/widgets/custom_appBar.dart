import 'package:app/Bloc_session/business_logic/cubit/characters_cubit.dart';
import 'package:app/Bloc_session/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(65);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<CharactersCubit>(context);
        return AppBar(
          backgroundColor: AppColor.kYellow,
          title: cubit.isSearch
              ? TextField(
                  controller: controller,
                  onChanged: (value) {
                    cubit.searchCharacter(value);
                  },
                  cursorColor: AppColor.kGray,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Here",
                      helperStyle: TextStyle(color: AppColor.kGray)),
                )
              : const Text(
                  "Characters",
                  style: TextStyle(color: AppColor.kGray),
                ),
          actions: [
            IconButton(
                onPressed: cubit.isSearch
                    ? () {
                        debugPrint("search");
                        setState(() {});
                        cubit.isSearch = !cubit.isSearch;
                      }
                    : () {
                        debugPrint("close");
                        cubit.isSearch = !cubit.isSearch;
                        // debugPrint(cubit.isSearch.toString());
                        setState(() {});
                        // ModalRoute.of(context)!.addLocalHistoryEntry(LocalHistoryEntry(impliesAppBarDismissal: ));
                      },
                icon: Icon(
                  cubit.isSearch ? Icons.clear : Icons.search,
                  color: AppColor.kGray,
                ))
          ],
        );
      },
    );
  }

  // @override
  // Size get preferredSize => const Size.fromHeight(65);
}
