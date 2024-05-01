import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/components/categories.dart';
import 'package:recipe_app/model/RecipeBundel.dart';

import 'package:recipe_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Categories(),
        RecipeBundelCard(),
      ],
    );
  }
}

class RecipeBundelCard extends StatelessWidget {
  const RecipeBundelCard({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
            color: recipeBundles[0].color,
            borderRadius: BorderRadius.circular(defaultSize * 1.8)),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  children: [
                    Text(
                      recipeBundles[0].title,
                      style: TextStyle(
                          fontSize: defaultSize * 2.2, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: defaultSize * 0.5,
                    ),
                    Text(
                      recipeBundles[0].description,
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("/assets/icons/chef.svg"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: defaultSize * 0.5,
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundles[0].imageSrc,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
