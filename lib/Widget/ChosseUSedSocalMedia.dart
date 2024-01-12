import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseUsedSocalMedia extends StatefulWidget {
  const ChooseUsedSocalMedia({super.key});

  @override
  State<ChooseUsedSocalMedia> createState() => _ChooseUsedSocalMediaState();
}

class _ChooseUsedSocalMediaState extends State<ChooseUsedSocalMedia> {

  List<String> selectedSocialMedia = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Which social networking sites do you actively use? (Check all that apply)',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          CheckboxListTile(
            title: Text('Facebook'),
            value: selectedSocialMedia.contains('Facebook'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Facebook', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('WhatsApp'),
            value: selectedSocialMedia.contains('WhatsApp'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('WhatsApp', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Youtube'),
            value: selectedSocialMedia.contains('Youtube'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Youtube', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Telegram'),
            value: selectedSocialMedia.contains('Telegram'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Telegram', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Instagram'),
            value: selectedSocialMedia.contains('Instagram'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Instagram', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Twitter'),
            value: selectedSocialMedia.contains('Twitter'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Twitter', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Snapchat'),
            value: selectedSocialMedia.contains('Snapchat'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Snapchat', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Tiktok'),
            value: selectedSocialMedia.contains('Tiktok'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Tiktok', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Discord'),
            value: selectedSocialMedia.contains('Discord'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('Discord', value!);
              });
            },
          ),
          CheckboxListTile(
            title: Text('LinkedIn'),
            value: selectedSocialMedia.contains('LinkedIn'),
            onChanged: (value) {
              setState(() {
                updateSelectedSocialMedia('LinkedIn', value!);
              });
            },
          ),
          SizedBox(height: 16.0),

        ],
      ),
    );
  }


  void updateSelectedSocialMedia(String platform, bool value) {
    if (value) {
      // Add the platform to the selected list
      selectedSocialMedia.add(platform);
    } else {
      // Remove the platform from the selected list
      selectedSocialMedia.remove(platform);
    }
  }


}
