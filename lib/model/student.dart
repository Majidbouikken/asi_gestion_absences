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
    Student("9", "hm_sitayeb", "Majda Sitayeb"),
    Student("10", "ha_abidat@esi.dz", "Ikram Abidat"),
    Student("11", "hn_Tiaiba@esi.dz", "Nabil Tiaiba"),
    Student("12", "hd_bouidaine@esi.dz", "Diaeddine Bouidaine"),
    Student("13", "hm_bencheikh@esi.dz", "Mohamed Amine Bencheikh"),
    Student("14", "hn_rachedi@esi.dz", "Nada Rachedi"),
    Student("15", "hn_el_hassan@esi.dz", "Nour El hassan"),
    Student("16", "hm_hennouni@esi.dz", "Narimane Hind Hennouni"),
    Student("17", "hr_smida@esi.dz", "Rofaida Zouina Smida"),
    Student("18", "hs_belaoura@esi.dz", "Sara Belaoura"),
    Student("19", "ht_berrached@esi.dz", "Tarik Berrached"),
    Student("20", "ia_nasri@esi.dz", "Allaedine Nasri"),
    Student("21", "ia_noui@esi.dz", "Akram Noui"),
    Student("22", "is_hafri@esi.dz", "Seif Ali Hafri"),
    Student("23", "ii_bensmaha@esi.dz", "Islem bensmaha"),
    Student("24", "ig_boukassem@esi.dz", "Ghizlan Boukassem"),
    Student("25", "id_khouri@esi.dz", "Dalia Khouri"),
    Student("26", "im_bouhamza@esi.dz", "Mohammed Bouhamza"),
    Student("27", "im_boukerfa@esi.dz", "Mouhamed Boukerfa"),
    Student("28", "ig_sidahmed@esi.dz", "Ghizlene Sidahmed"),
    Student("29", "in_boutata@esi.dz", "Nasreddine Boutata"),
    Student("30", "ia_meziani@esi.dz", "Asma Chahrazed Meziani"),
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

  // groupes
  static List<Student> groupe1 = [
    Student.testStudents[0],
    Student.testStudents[1],
    Student.testStudents[2],
    Student.testStudents[3],
    Student.testStudents[4],
    Student.testStudents[5],
    Student.testStudents[6],
    Student.testStudents[7],
    Student.testStudents[8],
    Student.testStudents[9],
  ];
  static List<Student> groupe2 = [
    Student.testStudents[10],
    Student.testStudents[11],
    Student.testStudents[12],
    Student.testStudents[13],
    Student.testStudents[14],
    Student.testStudents[15],
    Student.testStudents[16],
    Student.testStudents[17],
    Student.testStudents[18],
  ];

  static List<Student> groupe3 = [
    Student.testStudents[19],
    Student.testStudents[20],
    Student.testStudents[21],
    Student.testStudents[22],
    Student.testStudents[23],
    Student.testStudents[24],
    Student.testStudents[25],
    Student.testStudents[26],
    Student.testStudents[27],
    Student.testStudents[28],
    Student.testStudents[29],
  ];
}