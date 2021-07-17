import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FacebookInfo extends StatelessWidget {
  const FacebookInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                _info(
                    'https://scontent.fpnh8-1.fna.fbcdn.net/v/t1.6435-9/p843x403/170441337_3879877022067429_7722789029245444058_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeEUuxiO6XyOD7oe7EGbbVmXA4OarHSAYvwDg5qsdIBi_IFq7b-U_Z8UVx7VpdgM0v1-ll3NXFZrA5zdUWFgifSK&_nc_ohc=q6GKdtIVSBgAX8B1MVQ&_nc_ht=scontent.fpnh8-1.fna&oh=8c027bdccc340372d222b132d5bcd314&oe=60F86E4D',
                    'សក្នុងឱកាសដ៏មង្គលថ្លៃថ្លានៃពិធីបុណ្យចូលឆ្នាំថ្មី ប្រពៃណីជាតិខ្មែរ ឆ្នាំឆ្លូវ ទោស័ក ពុទ្ធសករាជ ២៥៦៤ ឈានចូល ត្រីស័ក ពុទ្ធសករាជ ២៥៦៥ ដែលនឹងឈានមកដល់នៅរយៈពេលប៉ុន្មានម៉ោងខាងមុខនេះ តាងនាមគណៈគ្រប់គ្រងនៃសាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ សាស្ត្រាចារ្យ លោកគ្រូ អ្នកគ្រូ បុគ្គលិកអប់រំ និងប្អូនៗនិស្សិតទាំងអស់ សូមសម្ដែងនូវអំណរសាទរ និងប្រសិទ្ធពរជ័យជូនចំពោះថ្នាក់ដឹកនាំ បងៗអាជ្ញាធរ បងៗកងកម្លាំង និងបុគ្គលិកសុខាភិបាល ព្រមទាំងពុកម៉ែ បងប្អូនជនរួមជាតិទាំងអស់ ជួបប្រទះតែពុទ្ធពរទាំងឡាយបួនប្រការគឺ អាយុ វណ្ណៈ សុខៈ និងពលៈកុំបីឃ្លៀងឃ្លាតឡើយ។ ជាមួយគ្នានេះដែរ ស្ថិតក្នុងកាលៈទេសៈដែលកម្ពុជានៃយើងកំពុងខិតខំប្រឹងប្រែងប្រយុទ្ធប្រឆាំងនឹងជំងឺរាតត្បាតជាសកល (កូវីដ១៩) ពួកយើងសូមអំពាវនាវដល់បងប្អូនប្រជាពលរដ្ឋឱ្យបន្តចូលរួមអនុវត្តនូវវិធានការការពារ "៣កុំ និង៣ការពារ" និង "ចូលឆ្នាំនៅផ្ទះ" ដែលត្រូវបានដាក់ចេញដោយរាជរដ្ឋាភិបាល និងក្រសួងសុខាភិបាលឱ្យបានខ្ជាប់ខ្ជួន ដើម្បីរួមគ្នាឈានឆ្ពោះទៅរកការរស់នៅជាធម្មតាតាមបែបគន្លងថ្មីនាពេលដ៏ខ្លីខាងមុខនេះ៕'),
                _info(
                    'https://scontent.fpnh8-2.fna.fbcdn.net/v/t39.30808-6/p843x403/212951761_4121488791239583_4206202564098753124_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeHDipM0wnEFiF9s9yf8IOJxUdpU31if5DVR2lTfWJ_kNeQjRazBeXuNIYqililXRHe4BvhB0incK8avTRhcy-U3&_nc_ohc=lIJOlhbIJLQAX9Kr4zb&_nc_ht=scontent.fpnh8-2.fna&oh=275dd9b6b1fc5dfa59dfa6d14cb0e1df&oe=60F81DAE',
                    'សូមចូលរួមថែរក្សាការពារប្រាសាទបុរាណខ្មែរទាំងអស់នៅទូទាំងប្រទេសឱ្យបានគង់វង្ស ដើម្បីកូនចៅខ្មែរគ្រប់ៗជំនាន់។ អបអរសាទរខួបទី៤ នៃការដាក់ប្រាសាទសំបូរព្រៃគុករបស់កម្ពុជាចូលក្នុងបញ្ជីបេតិកភណ្ឌពិភពលោក នាវេលាម៉ោង ៩:៤០នាទីយប់ ក្នុងសម័យប្រជុំលើកទី៤១ នៅទីក្រុងក្រាកូវ (Kraków) ប្រទេសប៉ូឡូញ ដោយអង្គការ យូណេស្កូ៕ ថ្ងៃទី៨ ខែកក្កដា ឆ្នាំ២០១៧ - ថ្ងៃទី៨ ខែកក្កដា ឆ្នាំ២០២១'),
                _info(
                    'https://scontent.fpnh8-1.fna.fbcdn.net/v/t1.6435-9/162875520_3808487542539711_9148325814002041460_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeHteZQLy6iiTlFLosx_Yd0T0voKSVVENaTS-gpJVUQ1pEoCkTT__aSE7eGP1vuXRQjVzAmM6q0ONXlwRBWnRine&_nc_ohc=GhufvClZ-Z4AX-abG6e&_nc_ht=scontent.fpnh8-1.fna&oh=289ba89fc5bc0ef0d6cb96c00477e6cf&oe=60F7CDDE',
                    'សេចក្តីជូនដំណឹងស្តីពីការផ្អាកដំណើរការគ្រឹះស្ថានសិក្សាសាធារណៈ និងឯកជន គ្រប់កម្រិតជាបណ្តោះអាសន្ន នៅទូទាំងប្រទេស។'),
                _info(
                    'https://scontent.fpnh8-1.fna.fbcdn.net/v/t1.6435-9/p843x403/170441337_3879877022067429_7722789029245444058_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeEUuxiO6XyOD7oe7EGbbVmXA4OarHSAYvwDg5qsdIBi_IFq7b-U_Z8UVx7VpdgM0v1-ll3NXFZrA5zdUWFgifSK&_nc_ohc=q6GKdtIVSBgAX8B1MVQ&_nc_ht=scontent.fpnh8-1.fna&oh=8c027bdccc340372d222b132d5bcd314&oe=60F86E4D',
                    'សក្នុងឱកាសដ៏មង្គលថ្លៃថ្លានៃពិធីបុណ្យចូលឆ្នាំថ្មី ប្រពៃណីជាតិខ្មែរ ឆ្នាំឆ្លូវ ទោស័ក ពុទ្ធសករាជ ២៥៦៤ ឈានចូល ត្រីស័ក ពុទ្ធសករាជ ២៥៦៥ ដែលនឹងឈានមកដល់នៅរយៈពេលប៉ុន្មានម៉ោងខាងមុខនេះ តាងនាមគណៈគ្រប់គ្រងនៃសាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ សាស្ត្រាចារ្យ លោកគ្រូ អ្នកគ្រូ បុគ្គលិកអប់រំ និងប្អូនៗនិស្សិតទាំងអស់ សូមសម្ដែងនូវអំណរសាទរ និងប្រសិទ្ធពរជ័យជូនចំពោះថ្នាក់ដឹកនាំ បងៗអាជ្ញាធរ បងៗកងកម្លាំង និងបុគ្គលិកសុខាភិបាល ព្រមទាំងពុកម៉ែ បងប្អូនជនរួមជាតិទាំងអស់ ជួបប្រទះតែពុទ្ធពរទាំងឡាយបួនប្រការគឺ អាយុ វណ្ណៈ សុខៈ និងពលៈកុំបីឃ្លៀងឃ្លាតឡើយ។ ជាមួយគ្នានេះដែរ ស្ថិតក្នុងកាលៈទេសៈដែលកម្ពុជានៃយើងកំពុងខិតខំប្រឹងប្រែងប្រយុទ្ធប្រឆាំងនឹងជំងឺរាតត្បាតជាសកល (កូវីដ១៩) ពួកយើងសូមអំពាវនាវដល់បងប្អូនប្រជាពលរដ្ឋឱ្យបន្តចូលរួមអនុវត្តនូវវិធានការការពារ "៣កុំ និង៣ការពារ" និង "ចូលឆ្នាំនៅផ្ទះ" ដែលត្រូវបានដាក់ចេញដោយរាជរដ្ឋាភិបាល និងក្រសួងសុខាភិបាលឱ្យបានខ្ជាប់ខ្ជួន ដើម្បីរួមគ្នាឈានឆ្ពោះទៅរកការរស់នៅជាធម្មតាតាមបែបគន្លងថ្មីនាពេលដ៏ខ្លីខាងមុខនេះ៕'),
                _info(
                    'https://scontent.fpnh8-2.fna.fbcdn.net/v/t39.30808-6/p843x403/212951761_4121488791239583_4206202564098753124_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeHDipM0wnEFiF9s9yf8IOJxUdpU31if5DVR2lTfWJ_kNeQjRazBeXuNIYqililXRHe4BvhB0incK8avTRhcy-U3&_nc_ohc=lIJOlhbIJLQAX9Kr4zb&_nc_ht=scontent.fpnh8-2.fna&oh=275dd9b6b1fc5dfa59dfa6d14cb0e1df&oe=60F81DAE',
                    'សូមចូលរួមថែរក្សាការពារប្រាសាទបុរាណខ្មែរទាំងអស់នៅទូទាំងប្រទេសឱ្យបានគង់វង្ស ដើម្បីកូនចៅខ្មែរគ្រប់ៗជំនាន់។ អបអរសាទរខួបទី៤ នៃការដាក់ប្រាសាទសំបូរព្រៃគុករបស់កម្ពុជាចូលក្នុងបញ្ជីបេតិកភណ្ឌពិភពលោក នាវេលាម៉ោង ៩:៤០នាទីយប់ ក្នុងសម័យប្រជុំលើកទី៤១ នៅទីក្រុងក្រាកូវ (Kraków) ប្រទេសប៉ូឡូញ ដោយអង្គការ យូណេស្កូ៕ ថ្ងៃទី៨ ខែកក្កដា ឆ្នាំ២០១៧ - ថ្ងៃទី៨ ខែកក្កដា ឆ្នាំ២០២១'),
                _info(
                    'https://scontent.fpnh8-1.fna.fbcdn.net/v/t1.6435-9/162875520_3808487542539711_9148325814002041460_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeHteZQLy6iiTlFLosx_Yd0T0voKSVVENaTS-gpJVUQ1pEoCkTT__aSE7eGP1vuXRQjVzAmM6q0ONXlwRBWnRine&_nc_ohc=GhufvClZ-Z4AX-abG6e&_nc_ht=scontent.fpnh8-1.fna&oh=289ba89fc5bc0ef0d6cb96c00477e6cf&oe=60F7CDDE',
                    'សេចក្តីជូនដំណឹងស្តីពីការផ្អាកដំណើរការគ្រឹះស្ថានសិក្សាសាធារណៈ និងឯកជន គ្រប់កម្រិតជាបណ្តោះអាសន្ន នៅទូទាំងប្រទេស។'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _info(String image, String title) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd-MM-yyyy – kk:mm:a').format(now);
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/a/a2/RUPP_logo.PNG'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Royal University Phnom Penh',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        formattedDate,
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert_outlined)
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 12.0, bottom: 12, right: 0, left: 0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20, right: 30, left: 30),
            child: Image.network(image),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  print('HH');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.thumb_up_alt_outlined),
                    SizedBox(
                      width: 7,
                    ),
                    Text('Like')
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.comment_bank_outlined),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Comment')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share_outlined),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Share')
                ],
              ),
            ],
          ),
          _style(),
        ],
      ),
    );
  }

  Widget _style() {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Divider(
          thickness: 12,
          color: Colors.grey[300],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
