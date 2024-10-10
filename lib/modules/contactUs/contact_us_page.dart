import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../shared/components.dart';
import '../../shared/constants.dart';
import '../../Cubit/site_cubit.dart';
import '../../Cubit/site_states.dart';
import '../newsAndEvents/news_and_events_constants.dart';
import 'contact_us_constants.dart';
class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SiteCubit, SiteStates>(
      listener: (context, state) {},
      builder: (context, state) {
        SiteCubit cubit = SiteCubit.get(context);
        return SafeArea(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          phonePage == 0
                              ? desktopAppbar(cubit, contactUsBodyImage)
                              : phoneAppbar(cubit, contactUsBodyImage),
                           Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Contact Us",
                                        maxLines: 100,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                          color: Colors.yellow[600],
                                          fontSize: 34
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        """Adress: 2ND industrial zone.\nFayoum - egypt.\nTel: 01003330067.\nWebsite:\nEmail:""",
                                        maxLines: 100,
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40,),
                              ],
                            ),
                          ),
                          phonePage == 0 ?
                          tail(cubit,context)
                              :
                          phoneTail(cubit,context)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
void onMapCreated(GoogleMapController controller) {
  mapController = controller;
}