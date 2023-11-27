import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class service_card extends StatelessWidget {
  const service_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondary,
      ),

      child: Container(
        child: Row(

          children: [
            Expanded(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://media.istockphoto.com/id/1349094945/photo/human-using-a-computer-laptop-for-searching-for-job-and-fill-out-personal-data-on-job-website.webp?b=1&s=170667a&w=0&k=20&c=p_SRXAc7KnjTOB803Xap7irCB8xgiAey1SerMMFj-x8='),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Horizontal_space(0.02),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lorum ipsum',style: headingStyle1(),),
                        Text('Lorum ipsum, Lorum ipsum, Lorum ipsum',)
                      ],
                    ),
                  ),
                  Horizontal_space(0.02),
                  Container(
                    child: Icon(Icons.chevron_right),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
