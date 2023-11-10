import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/recipe_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.pageHomeTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RecipeCard(
              image: "assets/images/unsplash_salad.jpg",
              name: t.pageHomeRecipeSaladName,
              description: t.pageHomeRecipeSaladDescription,
              author: t.pageHomeRecipeAuthor("John Doe"),
              created: t.pageHomeRecipeCreated(DateTime.parse("2022-03-22")),
              votes: t.pageHomeRecipeVotes(179),
            ),
            RecipeCard(
              image: "assets/images/unsplash_rice.jpg",
              name: t.pageHomeRecipeRiceName,
              description: t.pageHomeRecipeRiceDescription,
              author: t.pageHomeRecipeAuthor("Alice Morgen"),
              created: t.pageHomeRecipeCreated(DateTime.parse("2022-03-18")),
              votes: t.pageHomeRecipeVotes(154),
            ),
            RecipeCard(
              image: "assets/images/unsplash_eggs.jpg",
              name: t.pageHomeRecipeFriedEggsName,
              description: t.pageHomeRecipeFriedEggsDescription,
              author: t.pageHomeRecipeAuthor("Mark Gonzales"),
              created: t.pageHomeRecipeCreated(DateTime.parse("2022-02-09")),
              votes: t.pageHomeRecipeVotes(103),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                t.pageHomeDrawerHeader,
                style: theme.textTheme.headlineMedium,
              ),
            ),
            ListTile(
              title: Text(
                t.pageHomeDrawerListTileSettings,
                style: theme.textTheme.titleMedium,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/settings',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
