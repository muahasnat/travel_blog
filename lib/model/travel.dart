class Travel {
  String name;
  String location;
  String url;
  Travel(this.name, this.location, this.url);

  static List<Travel> genarateTravelBlog() {
    return [
      Travel('Senary1', 'Coxbazar', 'assets/images/a1.jpg'),
      Travel('Senary2', 'bandarban', 'assets/images/a2.jpg'),
      Travel('Senary3', 'Shundarban', 'assets/images/a3.jpg'),
      Travel('Senary4', 'Shundarban', 'assets/images/a4.jpg'),
      Travel('Senary5', 'cholonbill', 'assets/images/a5.jpg'),
    ];
  }
}
