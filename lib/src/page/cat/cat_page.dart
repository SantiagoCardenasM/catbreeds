import 'package:catbreeds/src/core/utils/send_url_util.dart';
import 'package:flutter/material.dart';
import 'package:catbreeds/src/models/cat/cat.dart';
import 'package:catbreeds/src/core/styles/app_colors.dart';
import 'package:catbreeds/src/core/styles/app_spaces.dart';
import 'package:catbreeds/src/ui/widgets/text_widgets.dart';
import 'package:catbreeds/src/core/utils/list_conts_util.dart';
import 'package:catbreeds/src/ui/widgets/background_widgets.dart';
import 'package:catbreeds/src/ui/widgets/buttom_containers_widget.dart';

class CatInformationPage extends StatelessWidget {

  const CatInformationPage({super.key, required this.cat});
  
  final Cat cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(            
        backgroundColor: Colors.white,
        body:  Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSpaces.h5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [              
              const SizedBox(height: AppSpaces.h25),
              BackWidget(title: cat.breeds.first.id ,),
              const SizedBox(height: AppSpaces.h15),
              Expanded(
                flex: 5,
                child: Hero(
                  tag: cat.url,
                  child: BackgroundImage(
                    fit: BoxFit.cover,           
                    pathImageBackground: cat.url,
                  ),
                ),
              ),
              const SizedBox(height: AppSpaces.h15),
              Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSpaces.h15),
                        TitlePrimary(text: cat.breeds.first.name),
                        const SizedBox(height: AppSpaces.h15),
                        SubtitlePrimary(text: cat.breeds.first.description , textAlign: TextAlign.left),
                        const SizedBox(height: AppSpaces.h15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextBasic(text: getFlagByCode( cat.breeds.first.countryCode)),
                            const SizedBox(width: AppSpaces.h15),
                            TextBasic(text: cat.breeds.first.origin),
                          ],
                        ),
                        const SizedBox(height: AppSpaces.h15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.pets, color: AppColors.orangeBackground,),
                            const SizedBox(width: AppSpaces.h15),
                            Expanded(
                              child: TextBasic(
                                text: cat.breeds.first.temperament, 
                                maxLines: 10,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpaces.h15),
                        // life_span
                        // TextBasic(text: 'Life Span: ${cat.breeds.first.lifeSpan} years'),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.add_moderator_rounded, color: AppColors.orangeBackground,),
                            const SizedBox(width: AppSpaces.h15),
                            TextBasic(text: 'Life Span: ${cat.breeds.first.lifeSpan} years'),
                          ],
                        ),
                        const SizedBox(height: AppSpaces.h45),
                        StatusBar(title: 'Adaptability:', value: cat.breeds.first.adaptability),
                        const SizedBox(height: AppSpaces.h15),
                        StatusBar(title: 'Child Friendly:', value: cat.breeds.first.childFriendly),
                        const SizedBox(height: AppSpaces.h15),
                        StatusBar(title: 'Dog Friendly:', value: cat.breeds.first.dogFriendly),
                        const SizedBox(height: AppSpaces.h15),
                        StatusBar(title: 'Energy Level:', value: cat.breeds.first.energyLevel),
                        const SizedBox(height: AppSpaces.h15),
                        StatusBar(title: 'Intelligence:', value: cat.breeds.first.intelligence),
                        const SizedBox(height: AppSpaces.h15),
                        StatusBar(title: 'Social Needs:', value: cat.breeds.first.socialNeeds),

                        const SizedBox(height: AppSpaces.h45),
                        ButtomContainer(
                          onClick: (){
                            navigateUrl(cat.breeds.first.wikipediaUrl);
                          },
                          widthbuttom: MediaQuery.of(context).size.width * 0.7,
                          colorButtom: AppColors.orangeBackground,
                          child: const TextButtom(text: 'More information', color: AppColors.brownPrimary),
                        ),
                        const SizedBox(height: AppSpaces.h45),
                      ],                    
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
    
  }
}

class BackWidget extends StatelessWidget {
  const BackWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(width: 10),
        SubtitlePrimary(
          text: title[0].toUpperCase() + title.substring(1),
          isBold: true,
        ),
        const Spacer(),
      ],
    );
  }
}

class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
    required this.title,
    required this.value,
  });

   final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBasic(text: title),
        const SizedBox(height: 8),
        Stack(
          children: [
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            FractionallySizedBox(
              widthFactor: value / 5,
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: AppColors.orangeBackground,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
