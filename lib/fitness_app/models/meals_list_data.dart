class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'images/annonce.png',
      titleTxt: 'Annonces ENSPD',
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'images/sms.png',
      titleTxt: 'Messages Importants',
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'images/requete.png',
      titleTxt: 'Soumettre une requete',
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'images/diplome.png',
      titleTxt: 'Resultats Semestriel',
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
