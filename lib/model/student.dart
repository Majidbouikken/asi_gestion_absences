class Student {
  String id;
  String email;
  String displayName;

  Student(this.id, this.email, this.displayName);

  // todo: delete this list
  // test list
  static List<Student> testStudents = [
    Student("1", "hm_sehdi@esi.dz", "Nassim Sehdi"),
    Student("2", "hb_chergui@esi.dz", "Yacine Chergui"),
    Student("3", "hm_said@esi.dz", "Said Kadri"),
    Student("4", "hm_raiah@esi.dz", "Amine Raiah"),
    Student("5", "hm_benmoussat@esi.dz", "Mouad Benmoussat"),
    Student("6", "ha_tlili@esi.dz", "Abderrahman Errached Tlili"),
    Student("7", "hs_taleb@esi.dz", "Oussama Taleb"),
    Student("8", "hm_hamana@esi.dz", "Houcine Hamana"),
  ];

  static List<String> getEmails(List<Student> list) {
    List<String> _list = [];
    for(int i = 0; i < list.length; i++) _list.add(list[i].email);
    return _list;
  }

  static List<String> getDisplayNames(List<Student> list) {
    List<String> _list = [];
    for(int i = 0; i < list.length; i++) _list.add(list[i].displayName);
    return _list;
  }
}